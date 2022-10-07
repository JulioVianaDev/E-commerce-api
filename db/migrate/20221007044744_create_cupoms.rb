class CreateCupoms < ActiveRecord::Migration[6.0]
  def change
    create_table :cupoms do |t|
      t.string :code
      t.integer :status
      t.decimal :discount_value, precision: 5, scale: 2
      t.datetime :due_date

      t.timestamps
    end
  end
end
