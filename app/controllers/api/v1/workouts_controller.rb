class Api::V1::WorkoutsController < ApplicationController

    def index
        workouts = Workout.all 
        render json: workouts    
    end

    def create
        workout = Workout.new(workout_params)
        if workout.save
            render json: workout, status: :accepted
        else
            render json: { errors: workout.errors.full_messages }, status: :uprocessible_entity
        end
    end

    private

    def workout_params
        params.require(:workout).permit(:name, exercise_attributes: [:id, :name, :video_url, :category_id])
    end
end
