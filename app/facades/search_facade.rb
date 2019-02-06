class SearchFacade

  def initialize(zip)
    @zip = zip
  end

  def stations
    station_info = service.get_station_info(@zip)
    station_info.map do |station|
      Station.new(station)
    end
  end

  private

  def service
    NrelService.new
  end
end
