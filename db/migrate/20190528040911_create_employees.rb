class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :eid
      t.string :name
      t.string :gender
      t.date :joining_date
      t.integer :phone_number

      t.timestamps
    end
    add_index :employees, [:name, :endid]
  end
end
