class ForecastFacade
  def initialize
    @@forecast_service ||= ForecastService.new.get_forecast_west
  end

  def create_forecast(resort)
    resort == nil ? forecast = Forecast.new(@@forecast_service) : forecast = Forecast.new(@@forecast_service, resort)
  end
end