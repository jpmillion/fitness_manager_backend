class Api::V1::AthletesController < ApplicationController

    def show
        
    end

    private

    def athlete_params
        params.require(:athlete).permit(:name)
    end
end
