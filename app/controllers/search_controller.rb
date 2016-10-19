class SearchController < ApplicationController
  def index
    response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{params['q']}&radius=6.0&fuel_type=ELEC,LPG&limit=10"
    byebug
  end

  # def conn
  #   Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json') do |faraday|
  #     faraday.adapter  Faraday.default_adapter
  #
  #   end
  # end
end
