class Athlete < ApplicationRecord
  has_many :workouts, dependent: :destroy
  
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
end
