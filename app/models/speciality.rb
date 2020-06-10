class Speciality < ApplicationRecord
  validates :name, presence: true
  has_many :activities
end
