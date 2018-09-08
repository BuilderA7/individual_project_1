class AddStateToIncome < ActiveRecord::Migration[5.1]
  def change
    add_column :incomes, :state, :string
  end
end
