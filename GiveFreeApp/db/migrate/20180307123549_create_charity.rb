class CreateCharity < ActiveRecord::Migration[5.1]
  def change
    create_table :charity do |t|

      t.timestamps
    end
  end
end
