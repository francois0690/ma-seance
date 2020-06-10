class Office < ApplicationRecord
  validates :name, presence: true
  # belongs_to :address
  belongs_to :address, polymorphic: true
  has_many :activities
end
