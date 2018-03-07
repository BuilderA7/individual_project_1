class CreateIncome < ActiveRecord::Migration[5.1]
  def change
    create_table :income do |t|

      t.timestamps
    end
  end
end
