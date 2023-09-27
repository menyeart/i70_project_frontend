class TrafficForecastController < ApplicationController
  def index
    @forecast = ForecastFacade.new.create_forecast(params[:resort])
  end

end