class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.integer :extension
      t.date :started_on

      t.timestamps
    end
  end
end
