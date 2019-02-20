module ApplicationHelper
  INFO_ADDRESS = "info@pw-tx.com"
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

  def info_mail_to_employee(employee)
    mail_to INFO_ADDRESS, "Email #{@employee.first_name}", subject: "Message for #{employee.name} from website"
  end
end
