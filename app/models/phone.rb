class Phone < ApplicationRecord
  has_one :buy, dependent: :destroy
end
