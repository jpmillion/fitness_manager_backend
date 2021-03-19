class Athlete < ApplicationRecord
  has_many :workouts, dependent: :destroy
end
