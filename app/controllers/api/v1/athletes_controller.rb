class Api::V1::AthletesController < ApplicationController

    def create
        athlete = Athlete.create(athlete_params)
        if athlete.valid?
            token = issue_token(athlete)
            render json: { athlete: AthleteSerializer.new(athlete), token: token }, status: :accepted
        else
            render json: {errors: athlete.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def authenticate
        token = request.headers['token']
        id = decoded_token(token)[0]['athlete_id']
        if id 
            athlete = Athlete.find(id)
            render json: { athlete: AthleteSerializer.new(athlete, { include: [:workouts] }), token: token }, status: :accepted
        else
            render json: { errors: 'invalid token'}
        end

    end

    private

    def athlete_params
        params.require(:athlete).permit(:name, :password)
    end
end
