class AthleteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :workouts
end
