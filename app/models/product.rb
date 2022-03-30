class Product < ApplicationRecord
  belongs_to :bakery
  validates :name, :details, :price, presence: true
end
