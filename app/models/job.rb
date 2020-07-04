class Job < ApplicationRecord
  searchkick

  validates :job_name, presence: true
  belongs_to :user



end
