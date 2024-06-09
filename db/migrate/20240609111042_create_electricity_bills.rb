class CreateElectricityBills < ActiveRecord::Migration[7.1]
  def change
    create_table :electricity_bills do |t|
      t.date :month
      t.integer :amount

      t.timestamps
    end
  end
end
