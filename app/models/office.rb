class Office < ApplicationRecord
  validates :name, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  has_many :activities
end
