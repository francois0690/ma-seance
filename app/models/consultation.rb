class Consultation < ApplicationRecord
  validates :date, presence: true #, availability: true
  belongs_to :activity
  belongs_to :user
end
