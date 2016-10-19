require 'rails_helper'

descirbe "Fuel Station Model" do
  it "has all attributes of a station" do
    station = FuelStation.new(station_name: "Station1",
                              street_address: "770 Grant St.",
                              fuel_type_code: "ELEC",
                              distance: "1.5",
                              access_times: "24 hours a day")

    expect(station.name).to eq("Station1")
    expect(station.address).to eq("770 Grant St.")
    expect(station.fuel_types).to eq("ELEC")
    expect(station.distance).to eq("1.5")
    expect(station.access_times).to eq("24 hours a day")
  end
end
