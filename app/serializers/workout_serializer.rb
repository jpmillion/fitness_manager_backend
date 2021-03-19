class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :exercises
  has_many :exercises
end
