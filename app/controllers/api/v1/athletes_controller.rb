class Api::V1::AthletesController < ApplicationController

    def create
        byebug
    end

    def show
        athlete = Athlete.find_by(name: params[:id])
        render json: AthleteSerializer.new(athlete, { include: [:workouts] })
    end

    private

    def athlete_params
        params.require(:athlete).permit(:name)
    end
end
