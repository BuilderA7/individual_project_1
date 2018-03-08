class CharitiesController < ApplicationController
   # before_action :set_charity, only: [:show, :edit, :update, :destroy]


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
    def set_charity
      @charity = charity.find(params[:id])
    end

    def charity_params
      params.fetch(:charity, {})
    end
end
