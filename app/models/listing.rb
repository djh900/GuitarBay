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
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000, only_integer: true }
  validates :location, presence: true, length: { in: 4..100 }

  def self.search(query)
    if query
      return self.where("LOWER(model) LIKE ?", "%#{query.downcase}%")
    else
      return self.all
    end
  end

end
