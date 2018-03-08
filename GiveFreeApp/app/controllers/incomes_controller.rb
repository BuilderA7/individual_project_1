class IncomesController < ApplicationController
  # before_action :set_Income, only: [:show, :edit, :update, :destroy]


  def index
    @incomes = Income.all
  end

  def show
  end

  def new
    @income = Income.new
  end

  def edit
  end

  def create
    @income = Income.new(Income_params)

      if @income.save
      end
  end

  def update
      if @income.update(Income_params)
      end
  end

  def destroy
    @income.destroy
  end

  private
    def set_Income
      @income = Income.find(params[:id])
    end

    def Income_params
      params.fetch(:income, {})
    end
end
