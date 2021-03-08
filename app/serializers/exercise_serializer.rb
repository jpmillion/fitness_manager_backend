class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :video_url
  belongs_to :category 
  belongs_to :workout
end
