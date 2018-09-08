class AddStatusToIncome < ActiveRecord::Migration[5.1]
  def change
    add_column :incomes, :status, :string
  end
end
