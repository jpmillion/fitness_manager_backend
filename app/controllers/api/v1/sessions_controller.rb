class Api::V1::SessionsController < ApplicationController
  def create
    athlete = Athlete.find_by(name: params[:name])
    if athlete && athlete.authenticate(params[:password])
        token = issue_token(athlete)
        render json: { athlete: AthleteSerializer.new(athlete), token: token }
    else
        render json: { errors: 'Invalid username or password', token: '' }
    end
  end
end
