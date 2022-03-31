class Bakery < ApplicationRecord
  has_many :products, dependent: :destroy
end
