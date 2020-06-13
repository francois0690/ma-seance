class Job < ApplicationRecord
  validates :job_name, presence: true
  belongs_to :user
end
