require 'rails_helper'

describe 'User can search using zip code' do
  it 'shows stations on /search' do
    facade = SearchFacade.new("80203")
    facade.stations
    visit '/'

    fill_in "q", with: 80203
    click_on "Locate"

    expect(current_path).to eq(search_path)
    expect(station.count).to eq(10)


  end
end


# As a user
# When I visit "/"
# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"


# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
