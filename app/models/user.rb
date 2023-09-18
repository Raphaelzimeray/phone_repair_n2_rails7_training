class User < ApplicationRecord
  has_many :buys, dependent: :destroy
  has_many :phones, through: :buys, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
