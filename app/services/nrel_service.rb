class NrelService

  def get_station_info(zip)
    hash = get_json("v1.json?fuel_type=LPG,ELEC&location=#{zip}&api_key=#{ENV['API_KEY']}&format=JSON&radius=6&limit=10")[:fuel_stations]
  end

  def conn
    Faraday.new(url:"https://developer.nrel.gov/api/alt-fuel-stations/")
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

end
