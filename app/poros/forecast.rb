class Forecast
  attr_reader :date, :direction, :duration_info
  def initialize(forecast_info)
    @date = forecast_info[:data][:attributes][:date]
    @direction = forecast_info[:data][:attributes][:direction]
    @duration_info = forecast_info[:data][:attributes][:duration_info]
  end
end