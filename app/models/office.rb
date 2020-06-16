class Office < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  has_many :activities
end
