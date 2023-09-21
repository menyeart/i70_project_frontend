require "rails_helper"

RSpec.describe "Forecast service", :vcr do
  before(:each) do
    time = Time.local(2024, 9, 16, 4, 0, 0)
    Timecop.travel(time)
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
      attribute_keys = [:date, :direction, :duration_info]
      resort_keys = [:Loveland, :"Winter Park", :"Arapahoe Basin", :Keystone, :Breckenridge, :Copper, :Vail, :"Beaver Creek", :Cooper, :Monarch]
      
      expect(forecast).to be_a(Hash)
      expect(forecast).to have_key(:data)
      expect(forecast[:data][:attributes].keys).to eq(attribute_keys)
      expect(forecast[:data][:attributes][:direction]).to eq("west")
      expect(forecast[:data][:attributes][:duration_info].keys).to eq(resort_keys)
    end
  end
end