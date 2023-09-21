class ForecastFacade
  def initialize
    @forecast_service  = ForecastService.new.get_forecast_west
  end

  def create_forecast
    Forecast.new(@forecast_service)
  end
end