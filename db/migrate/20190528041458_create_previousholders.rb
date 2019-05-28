class CreatePreviousholders < ActiveRecord::Migration[5.2]
  def change
    create_table :previousholders do |t|
      t.integer :employee_id
      t.datetime :from_date
      t.datetime :to_date
      t.text :remark
      t.integer :item_id

      t.timestamps
    end
  end
end
