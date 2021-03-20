class Api::V1::WorkoutsController < ApplicationController

    def create
        workout = Workout.new(workout_params)
        params[:exercises].each do |exercise|
            workout.exercises << Exercise.find_by(name: exercise)
        end
        if workout.save
            options = { include: [:exercises] }
            render json: WorkoutSerializer.new(workout, options), status: :accepted
        else
            render json: { errors: workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        Workout.find_by(id: params[:id]).destroy
        render json: 'Workout Deleted'
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :athlete_id)
    end
end
