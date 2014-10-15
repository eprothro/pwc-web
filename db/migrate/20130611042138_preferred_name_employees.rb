class PreferredNameEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :preferred_name, :string
  end
end
