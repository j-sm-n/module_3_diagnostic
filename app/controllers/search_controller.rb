class SearchController < ApplicationController
  def index
    res = conn.get do |req|
      req.params['api_key'] = ENV['NREL_API_KEY']
      req.params['location'] = params['q']
      req.params['radius'] = 6.0
      req.params['fuel_type'] = "ELEC,LPG"
      req.params['limit'] = 10
    end
    raw_fuel_stations = JSON.parse(res.body, :symbolize_names=>true)[:fuel_stations]
    byebug
  end

  def conn
    Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json') do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  #Name, Address, Fuel Types, Distance and Access Times
  # response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{}&location=#{params['q']}&radius=6.0&fuel_type=ELEC,LPG&limit=10"
  # res = JSON.parse(response.body)
end
