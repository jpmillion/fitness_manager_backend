class AddAthleteToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_reference :workouts, :athlete, foreign_key: true
  end
end
