# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts "-> Creating Employees..."
YAML.load_file('db/seed_data/employees.yml').each do |employee_hash|
  e = Employee.find_by_name(employee_hash['name']) || Employee.new
  e.update_attributes(employee_hash)
  e.save!
end

puts "-> Creating Services..."
YAML.load_file('db/seed_data/services.yml').each do |group, services|
  puts "    - Creating/Updating #{group} Services Group..."
  group = ServiceGroup.find_by_name(group) || ServiceGroup.create!(name: group)
  if services.present?
    services.each do |service_data|
      puts "       - Creating/Updating #{service_data['name']} Service..."
      service = Service.find_by_name(service_data['name']) || Service.new
      service.name = service_data['name']
      service.service_group = group
      service.description = service_data['description']

      service.contacts.clear

      if service_data['contacts'].present?
        service_data['contacts'].each do |contact|
          employee = Employee.find_by_name(contact)
          raise "Employee not found: #{contact}" unless employee.present?
          service.contacts << employee
        end
      end
      service.save!
    end
  end
end

puts "-> Creating Photo Albums..."
# {"Our Office"=>{"cover"=>"bunch/cover.jpg", "events"=>[{"name"=>"PW Office Building", "cover"=>"bunch/cover.jpg", "photos"=>["office/01.jpg"
YAML.load_file('db/seed_data/photos.yml').each do |album, album_data|
  puts "    - Creating/Updating #{album} Photo Album..."
  album_name = album
  album = Album.find_by_name(album_name) || Album.new
  album.name = album_name
  album.cover_asset = album_data['cover']
  album.save!

  if album_data['events'].present?
    album_data['events'].each do |data|
      puts "       - Creating/Updating #{data['name']} Event..."
      event_name = data['name']
      event = Event.find_by_slug(event_name.parameterize) || Event.new
      event.album = album
      event.name = event_name
      event.cover_asset = data['cover']
      event.save!

      if data['photos'].present?
        data['photos'].each do |photo|
          asset, caption = Array(photo).flatten
          image = Image.find_by_asset(asset) || Image.create(asset: asset)
          image.caption = caption
          image.event = event
          image.save!
        end
      end
    end
  end
end
