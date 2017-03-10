module ApplicationHelper
  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end

  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    raise "#{file_path} not found" unless File.exists?(file_path)
    File.read(file_path).html_safe
  end
end
