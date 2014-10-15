class EmployeeServiceJoin < ActiveRecord::Migration
  def change
    create_table :employees_services, id: false do |t|
      t.references :employee, :service
    end
  end
end
