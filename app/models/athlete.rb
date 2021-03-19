class Athlete < ApplicationRecord
  has_many :workouts, dependent: :destroy
  

  validates :name, uniqueness: true
end
