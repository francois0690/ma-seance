class User < ApplicationRecord
  before_create :generate_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  searchkick

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :consultations
  has_many :activities
  has_many :specialities, through: :activities
  has_many :jobs
  has_many :offices, through: :activities
  has_one_attached :avatar

  after_commit :reindex_office

  def reindex_office
    Office.reindex
  end

  def full_name
    "#{civility} #{first_name} #{last_name}"
  end
  private
  def generate_token
    self.auth_token = SecureRandom.hex(32)
  end
end
