class Search < ApplicationRecord
include HTTParty
  base_uri 'https://projects.propublica.org/nonprofits/api/v2'
  
  def self.search
    self.class.get("/search.json?q=hunger")
  end
  # def self.search(search)
  # where("name LIKE ? OR ingredients LIKE ? OR cooking_instructions LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 

end

# s = Search.new
#  s.search.each_with_index do |line, index|
#   if index == 1
#     p line[1]
#   end
# end


