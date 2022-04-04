class Order < ApplicationRecord
  belongs_to :user
  belongs_to :bakery
  has_many :baskets, dependent: :destroy
  has_many :products, through: :baskets

  enum status: {
    pending: 0,
    closed: 1
  }

end
