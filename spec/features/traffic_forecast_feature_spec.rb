require "rails_helper"

RSpec.describe "Traffic forecast feature" do
  describe "As a visitor, when I visit '/traffic_forecast'", :vcr do
      it "I see a header 'traffic forecast' and all the times forecasted for the first resort" do

        visit "/"
        save_and_open_page
        click_button "Winter Park"
        save_and_open_page
      end
    end
end