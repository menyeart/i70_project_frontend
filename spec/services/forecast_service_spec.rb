require "rails_helper"

RSpec.describe "Forecast service", :vcr do
  before(:each) do
    @forecast = ForecastService.new
  end
  describe "Methods" do
    it "is a service" do
      expect(@forecast).to be_a(ForecastService)
    end

    it "has a connectino to faraday" do
      expect(@forecast.conn).to be_a(Faraday::Connection)
    end

    it "takes destination params and returns durations for each destination" do
      forecast = @forecast.get_forecast_west
      binding.pry

      # expect(forecast).to be_a(Hash)
      # expect(forecast).to have_key(:destination_addresses)
      # expect(forecast[:destination_addresses]).to be_a(Array)
      # expect(forecast).to have_key(:origin_addresses)
      # expect(forecast[:origin_addresses]).to be_a(Array)
      # expect(forecast).to have_key(:rows)
      # expect(forecast[:rows]).to be_an(Array)
    end
  end
end