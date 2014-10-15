class AddSubtextToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :suffix, :string
    add_column :employees, :subtitle, :string
  end
end
