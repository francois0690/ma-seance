class Consultation < ApplicationRecord
  validates :date, presence: true, availability: true
  belongs_to :activity
  # belongs_to :patient, class_name: "User", foreign_key: "user_id"
  belongs_to :user
end
