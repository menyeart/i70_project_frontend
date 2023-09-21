require "rails_helper"

RSpec.describe "Traffic forecast feature" do
  before(:each) do
    time = Time.local(2024, 9, 16, 4, 0, 0)
    Timecop.travel(time)
  end
  describe "As a visitor, when I visit '/traffic_forecast'", :vcr do
    it "I see a header 'traffic forecast' and all the times forecasted for the first resort" do
      visit "/"
    end
  end

end