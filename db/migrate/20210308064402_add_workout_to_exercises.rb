class AddWorkoutToExercises < ActiveRecord::Migration[6.0]
  def change
    add_reference :exercises, :workout, foreign_key: true
  end
end
