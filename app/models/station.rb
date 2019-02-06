class Station

  def initialize(stations)
    require "pry"; binding.pry
    @name = stations[:station_name]
    @address = stations[:street_address]
  end
end
