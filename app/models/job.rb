class Job < ApplicationRecord
  searchkick

  validates :job_name, presence: true
  belongs_to :user

  after_commit :reindex_job

def reindex_job
  job.reindex
end

end
