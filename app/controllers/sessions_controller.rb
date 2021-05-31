class SessionsController < ApplicationController
  def create
    athlete = Customer.find_by(name: params[:name])
    if athlete && athlete.authenticate(params[:password])
        token = issue_token(athlete)
        render json: { athlete: CustomerSerializer.new(athlete), token: token }
    else
        render json: { errors: 'Invalid email or password', token: '' }
    end
  end
end
