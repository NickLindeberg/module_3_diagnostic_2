class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :access_times,
              :distance

  def initialize(stations)
    @name = stations[:station_name]
    @address = stations[:street_address]
    @fuel_types = stations[:fuel_type_code]
    @access_times = stations[:access_days_time]
    @distance = stations[:distance]
  end
end
