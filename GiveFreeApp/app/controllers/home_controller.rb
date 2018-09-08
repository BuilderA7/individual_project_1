
class HomeController < ApplicationController
    before_action :logged_in, only: [:show, :edit, :update, :destroy, :index]
      before_action :searcher, only: [:show, :edit, :update, :destroy, :index]

  def index

  end

  # def show
  # end

  # def new
  #   @home = Home.new
  # end

  # def edit
  # end

  # def create
  #   @home = Home.new(home_params)

  #     if @home.save
  #     end
  # end

  # def update
  #     if @home.update(home_params)
  #     end
  # end

  # def destroy
  #   @home.destroy
  # end

  private


  def looged_in
    if current_user == " "
      @logged_in = false
    end
  end

  def searcher 
    @charity_search = params[:charity_search]
    if  @charity_search
    redirect_to charities_path
    end
  end


  #   def home_params
  #     params.fetch(:home, {})
  #   end
  

end
