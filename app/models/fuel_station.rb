class FuelStation
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(station_attr)
    @name = station_attr[:station_name]
    @address = station_attr[:street_address]
    @fuel_types = station_attr[:fuel_type_code]
    @distance = station_attr[:distance]
    @access_times = station_attr[:access_days_times]
  end
end
