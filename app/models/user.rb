class User < ApplicationRecord
  has_many :buys, dependent: :destroy
  has_many :phones, through: :buys, dependent: :destroy
  # validates :birthday, presence: true
  # validates :age, presence: true
  # validates :name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
