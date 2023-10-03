require "rails_helper"

RSpec.describe "Traffic forecast feature" do
  describe "As a visitor, when I visit '/traffic_forecast'", :vcr do
      it "I see a header 'traffic forecast' and all the times forecasted for the first resort" do
        buttons = ["Loveland", "Winter Park", "Arapahoe Basin", "Keystone", "Breckenridge", "Copper", "Vail", "Beaver Creek", "Copper", "Monarch"]
        fields = ["Departure Time", "Estimated Travel Time", "Additional Travel Time", "Percent Above Ideal"]

        visit "/"
        
        expect(page).to have_content("Front Range Freeway Forecast")
        expect(page).to have_content("Front Range Freeway Forecast")

        click_button "Winter Park"

        buttons.each do |button|
          expect(page).to have_button(button)
        end
        fields.each do |field|
          expect(page).to have_content(field)
        end
      end
    end
end