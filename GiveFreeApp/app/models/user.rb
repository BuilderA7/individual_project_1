class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :incomes
  has_many :charities

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
