class UsersController < ApplicationController
 before_action :searcher, only: [:show, :edit, :update, :destroy, :index]
   before_action :logged_in, only: [:index, :show, :edit, :update, :destroy, :new]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

      if @user.save
        
      end
  end

  def update
      if @user.update(user_params)
      end
  end

  def destroy
    @user.destroy
  end
private
    def searcher 
      @charity_search = params[:charity_search]
      if  @charity_search
        redirect_to charities_path
      end
    end

    def looged_in
      if current_user == nil
        @logged_in = false
      end
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.fetch(:user, {})
    end
end


