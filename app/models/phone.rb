class Phone < ApplicationRecord
  has_one :buy, dependent: :destroy
  has_many_attached :photos
end
