class Api::HealthController < ApplicationController
    def index
      render json: { status: 'OK' }, status: 200
    end
  end