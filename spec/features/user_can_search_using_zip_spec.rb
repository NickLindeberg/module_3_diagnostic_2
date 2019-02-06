require 'rails_helper'

describe 'User can search using zip code' do
  it 'shows stations on /search' do
    visit '/'

    fill_in "q", with: 80203
    click_on "Locate"

    expect(current_path).to eq(search_path)
    expect(page).to have_css('.station', count: 10)
    expect(page).to have_content("Station: UDR")
    expect(page).to have_content("Address: 800 Acoma St")
    expect(page).to have_content("Fuel Types: ELEC")
    expect(page).to have_content("Access Times: 24 hours daily")
    expect(page).to have_content("Distance: 0.31422 Miles")
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
