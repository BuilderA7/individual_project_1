require "HTTParty"
class SearchController < ApplicationController
include HTTParty
  before_action :income_params, only:[:new]

 def index
  @Q = params[:search]
    @json_response = self.class.get("https://projects.propublica.org/nonprofits/api/v2/search.json?q=#{@Q}")
    if @json_response['total_results']
    @rawdata = @json_response 
    @num = @rawdata['total_results']
    else
      return @err = "There Where No Results Found"
    end
  end



  def new 
    @user = current_user.id
    @income = Income.new
    if @income.save
      redirect_to user_income_path(@user) 
    end
  end


  private 

  def income_params
    params.fetch(:income, {})
  end
end

