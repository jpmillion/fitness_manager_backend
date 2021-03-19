class Api::V1::AthletesController < ApplicationController

    def create
        byebug
    end

    def show
        byebug
    end

    private

    def athlete_params
        params.require(:athlete).permit(:name)
    end
end
