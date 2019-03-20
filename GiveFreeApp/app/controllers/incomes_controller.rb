class IncomesController < ApplicationController
   before_action :set_Income, only: [:show, :edit, :update, :destroy]
before_action :income_params, only: [:create, :show, :edit, :update, :destroy]

  def index
    @incomes = Income.all
    @input = params[:amount]
    @status = params[:status]
    @gift = contribution(@input, @status)
     @logged_in = true

  end

  def show

  end

  def new
      @income = Income.new
      @input = params[:amount]
      @status = params[:status]
      @gift = contribution(@input, @status)
  end

  def edit
  end
  def create
    @income = current_user.incomes.new(income_params)
      if @income.save
        # @gift = contribution(current_user.incomes,)
        # redirect_to user_income_path(income_params)

      end
  end

  def update
      if @income.update(Income_params)
      end
  end

  def destroy
    @income.destroy
  end
def contribution(amount, status)
  
    single_incomes = [9252, 38700, 93700, 195450, 424950,426701]
    single_tax = [10, 15, 25, 28, 33, 35, 39.6]
    married_income = [19050, 77400, 156150, 237950, 480050, 480051]
    married_tax = [10, 15, 25, 28, 33, 35, 39.6]
    head_income = [13600, 51850, 133850, 216700, 424950, 453350]
    head_tax = [10, 15, 25, 28, 33, 35, 39.6]

    @hash_single = single_incomes.zip(single_tax).to_h
    @hash_married = married_income.zip(married_tax).to_h
    @hash_headhouse = head_income.zip(head_tax).to_h
    @tax_brackets = [@hash_single, @hash_married, @hash_headhouse]
    @headhouse_liability = head_income.zip([10, 1360, 7097.50, 27597.50, 119518.50, 129458 ]).to_h
    @married_liability = married_income.zip([10, 1905, 10657.50, 30345, 53249, 114959, 134244]).to_h
    @single_liability = single_incomes.zip([10, 952.50, 5328.25, 19078.75, 47568.75, 123303.75, 123916.25 ]).to_h
    if status && amount
      if status.downcase === "single"
        @tax_brackets[0].each do |t,i|
          if t >  amount.to_f  
             @b = t
          end
        end
        @contribution = (((amount.to_f  - @b)*(@tax_brackets[0][@b])/100) + @single_liability[@b])* 0.1
      end

      if status.downcase === "married"
        @tax_brackets[1]  .each do |t,i|
          if t >  amount.to_f 
             @b = t   
          end
        end
        @contribution = (((amount.to_f  - @b)*(@tax_brackets[1][@b])/100) + @married_liability[@b])*0.1
      end
    end
     # @contribution = (((amount.first.amount  - @tax_brackets[0][0][@b][0])*(@tax_brackets[0][0][@b][1])/100) + @single_liability[@b+1] * 0.1)
     # @contribution
  end
  private
    def set_Income
      @income = Income.find(params[:id])
    end

    def income_params
      params.require(:income).permit(:amount, :status)
    end
end
