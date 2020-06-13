class Office < ApplicationRecord
  validates :name, presence: true
  # belongs_to :address
  has_one :address # , polymorphic: true
  has_many :activities
end
