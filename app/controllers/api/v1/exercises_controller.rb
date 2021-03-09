class Api::V1::ExercisesController < ApplicationController
    
    def index
        exercises = Exercise.all
        options = { include: [:category, :workout] }
        render json: ExerciseSerializer.new(exercises, options) 
    end
end
