class Forecast
  attr_reader :date, :direction, :duration_info, :resort, :resort_list
  def initialize(forecast_info, resort = "Loveland")
    @date = forecast_info[:data][:attributes][:date]
    @direction = forecast_info[:data][:attributes][:direction]
    @resort = resort
    @duration_info = forecast_info[:data][:attributes][:duration_info][resort.to_sym]
    @resort_list = forecast_info[:data][:attributes][:duration_info].keys
  end
end