class Api::V1::AthletesController < ApplicationController

    def create
        athlete = Athlete.new(athlete_params)
        if athlete.save
            render json: AthleteSerializer.new(athlete), status: :accepted
        else
            render json: {errors: athlete.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        athlete = Athlete.find_by(name: params[:id])
        if athlete
            render json: AthleteSerializer.new(athlete, { include: [:workouts] }), status: :accepted
        else 
            render json: {errors: 'Invalid Entry'}, status: :unprocessable_entity
        end
    end

    private

    def athlete_params
        params.require(:athlete).permit(:name)
    end
end
