class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :exercises
end
