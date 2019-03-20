class Income < ApplicationRecord
belongs_to :user 
  
def contribution
  
    single_incomes = [9252, 38700, 93700, 195450, 424950,426701]
    single_tax = [10, 15, 25, 28, 33, 35, 39.6]
    married_income = [19050, 77400, 156150, 237950, 480050, 480051]
    married_tax = [10, 15, 25, 28, 33, 35, 39.6]
    head_income = [13600, 51850, 133850, 216700, 424950, 453350]
    head_tax = [10, 15, 25, 28, 33, 35, 39.6]

    @hash_single = [single_incomes.zip(single_tax)]
    @hash_married =[married_income.zip(married_tax)]
    @hash_headhouse = [head_income.zip(head_tax)]
    @tax_brackets = [@hash_single, @hash_married, @hash_headhouse]
    @headhouse_liability = [10, 1360, 7097.50, 27597.50, 119518.50, 129458 ]
    @married_liability = [10, 1905, 10657.50, 30345, 53249, 114959, 134244]
    @single_liability = [10, 952.50, 5328.25, 19078.75, 47568.75, 123303.75, 123916.25 ]
    
    @tax_brackets[0][0].each_with_index do |t,i|
      if t[0] <  amount 
         p @b = i 
      end
    end
    @contribution = (((amount - @tax_brackets[0][0][@b][0])*(@tax_brackets[0][0][@b][1])/100) + @single_liability[@b+1] * 0.1)
    # @contribution
  end
end

# Tax Rate  Head of Household: Taxable Income Bracket Tax Liability Hash[keys.zip(values)]

# 10% $0 to $13,600 10% of Taxable Income
# 15% $13,601 to $51,850  $1,360 plus 15% of the excess over $13,600
# 25% $51,851 to $133,850 $7,097.50 plus 25% of the excess over $51,850
# 28% $133,851 to $216,700  $27,597.50 plus 28% of the excess over $133,850
# 33% $216,701 to $424,950  $50,795.50 plus 33% of the excess over $216,700
# 35% $424,951 to $453,350  $119,518.50 plus 35% of the excess over $424,950
# 39.60%  $453,351 and above  $129,458 plus 39.6% of the excess over $453,350
# Tax Rate  Single: Taxable Income Bracket  Tax Liability
# 10% $0 to $9,525  10% of Taxable Income
# 15% $9,526 to $38,700 $952.50 plus 15% of the excess over $9,525
# 25% $38,701 to $93,700  $5,328.25 plus 25% of the excess over $38,700
# 28% $93,701 to $195,450 $19,078.75 plus 28% of the excess over $93,700
# 33% $195,451 to $424,950  $47,568.75 plus 33% of the excess over $195,450 20653 1575
# 35% $424,951 to $426,700  $123,303.75 plus 35% of the excess over $424,950
# 39.60%  $426,701 and above  $123,916.25 plus 39.6% of the excess over $426,700

# Tax Rate  Married Filing Jointly: Taxable Income Bracket  Tax Liability
# 10% $0 to $19,050 10% of Taxable Income
# 15% $19,051 to $77,400  $1,905 plus 15% of the excess over $189,050
# 25% $77,401 to $156,150 $10,657.50 plus 25% of the excess over $77,400
# 28% $156,151 to $237,950  $30,345 plus 28% of the excess over $156,150
# 33% $237,951 to $424,950  $53,249 plus 33% of the excess over $237,950
# 35% $424,951 to $480,050  $114,959 plus 35% of the excess over $424,950
# 39.60%  $480,051 and above  $134,244 plus 39.6% of the excess over $480,050


