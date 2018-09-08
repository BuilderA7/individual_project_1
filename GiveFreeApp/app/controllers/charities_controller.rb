class CharitiesController < ApplicationController
   before_action :logged_in, only: [:index, :show, :edit, :update, :destroy, :new]
   before_action :searcher, only: [:show, :edit, :update, :destroy, :index, :search]

  def search
    
    
  end 
  def index

    @charities = Charity.all
  

  end
   
 

  def show
     @charity = Charity.find_by(id: params[:id])

  end

  def new
    @charity = Charity.new
  end

  def edit
  end

  def create
    @charity = Charity.new(charity_params)

      if @charity.save
      end
  end

  def update
      if @charity.update(charity_params)
      end
  end

  def destroy
    @charity.destroy
  end

  private

    def looged_in
      if current_user == nil
        @logged_in = false
      end
    end

    def searcher 
      @charity_search = params[:charity_search]
      if  @charity_search
      redirect_to charities_path
      end
    end

    def set_charity
      @charity = charity.find(params[:id])
    end

    def charity_params
      params.fetch(:charity, {})
    end
end
