class CreateContractHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :contract_histories do |t|
      t.string :company
      t.string :plan
      t.integer :ampere
      t.date :start_at

      t.timestamps
    end
  end
end
