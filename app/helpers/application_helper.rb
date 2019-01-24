module ApplicationHelper
  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end

  def bio_link(first_and_last, *args)
    employee = employee(first_and_last)
    link_to first_and_last, employee, *args
  end

  def employee(first_and_last)
    Employee.find_by_name(first_and_last)
  end

  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    raise "#{file_path} not found" unless File.exists?(file_path)
    File.read(file_path).html_safe
  end
end
