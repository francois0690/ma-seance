class Address < ApplicationRecord
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  has_many :users
  has_many :offices
end
