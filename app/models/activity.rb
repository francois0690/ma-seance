class Activity < ApplicationRecord
  searchkick

  belongs_to :user
  belongs_to :speciality
  belongs_to :office
  has_many :consultations
end
