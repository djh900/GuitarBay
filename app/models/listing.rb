class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :manufacturer
  belongs_to :condition
  belongs_to :color
  belongs_to :material
  belongs_to :fingerboard
  belongs_to :bridge
  belongs_to :country
  belongs_to :case
  belongs_to :delivery

  has_one_attached :image

  validates :model, presence: true, length: { maximum: 30 }
  validates :price, presence: true
  validates :location, presence: true
end
