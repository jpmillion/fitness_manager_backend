class Api::V1::WorkoutsController < ApplicationController

    def index
        workouts = Workout.all 
        options = { include: [:exercises] }
        render json: WorkoutSerializer.new(workouts, options)    
    end

    def create
        workout = Workout.new(workout_params)
        params[:exercises].each do |exercise|
            workout.exercises << Exercise.find_by(name: exercise)
        end
        if workout.save
            options = { include: [:exercises] }
            render json: WorkoutSerializer.new(workout, options), status: :accepted
        else
            render json: { errors: workout.errors.full_messages }, status: :uprocessible_entity
        end
    end

    def destroy
        Workout.find_by(name: params[:id]).destroy
        render json: 'Workout Deleted'
    end

    private

    def workout_params
        params.require(:workout).permit(:name)
    end
end
