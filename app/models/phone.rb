class Phone < ApplicationRecord
  has_one :buy, dependent: :destroy
  has_many_attached :photos
  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :capacity_go, presence: true
  validates :camera, presence: true
  validates :description, presence: true
  validates :color, presence: true
  validates :photos, presence: true
end
