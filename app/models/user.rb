class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  searchkick

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :consultations
  has_many :activities
  has_many :jobs
  has_many :offices, through: :activities
  has_one_attached :avatar
end
