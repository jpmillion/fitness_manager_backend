class ApplicationController < ActionController::API
    def jwt_key
        Rails.application.credentials.jwt_key
    end

    def issue_token(athlete)
        JWT.encode({athlete_id: athlete.id}, jwt_key, 'HS256')
    end

    def decoded_token(token)
        begin
          JWT.decode(token, jwt_key, true, { :algorithm => 'HS256' })
        rescue JWT::DecodeError
          [{error: "Invalid Token"}]
        end
    end
end
