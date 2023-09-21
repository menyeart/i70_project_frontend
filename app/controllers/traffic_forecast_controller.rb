class TrafficForecastController < ApplicationController
  def index
    forecast = ForecastFacade.new
    @forecast = forecast.create_forecast
  end

end