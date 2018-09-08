class Charity < ApplicationRecord
   belongs_to :user, required: false 



  # def self.search(search)
  #   where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  # end


  
end