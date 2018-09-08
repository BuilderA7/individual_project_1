class CreateIncome < ActiveRecord::Migration[5.1]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.belongs_to :user
      t.string :state
      t.timestamps
    end
  end
end
