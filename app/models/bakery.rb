class Bakery < ApplicationRecord
  has_many :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :products, dependent: :destroy
end
