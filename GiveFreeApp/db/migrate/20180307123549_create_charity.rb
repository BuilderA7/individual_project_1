class CreateCharity < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :description
      t.string :rating
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
