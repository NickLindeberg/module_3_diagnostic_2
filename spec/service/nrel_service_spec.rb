require 'rails_helper'

describe NrelService do
  it 'exists' do
    VCR.use_cassette("nrel_service") do
      nrel = NrelService.new
      expect(nrel).to be_a(NrelService)
    end
  end

  it 'gives stations for a zip code' do
    VCR.use_cassette("nrel_service") do
      service = NrelService.new
      data = service.get_station_info("80203")[0]

      expect(data).to be_a(Hash)
      expect(data[:station_name]).to eq("UDR")
      expect(data[:street_address]).to eq("800 Acoma St")
    end
  end
end
