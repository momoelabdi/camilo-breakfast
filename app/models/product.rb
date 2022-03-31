class Product < ApplicationRecord
  belongs_to :bakery
  validates :name, :details, :price, presence: true
  has_many_attached :photo
end
