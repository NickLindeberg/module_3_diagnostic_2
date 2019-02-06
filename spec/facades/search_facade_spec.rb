require 'rails_helper'

describe 'search facade' do
  it 'creates stations based on zip code' do
    zip = 80203
    facade = SearchFacade.new(zip)

    stations = facade.stations
    expect(stations.count).to eq(10)
    expect(stations.first.class).to eq(Station)
  end
end
