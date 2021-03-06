class Athlete < ApplicationRecord
  has_secure_password
  has_many :workouts, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
end
