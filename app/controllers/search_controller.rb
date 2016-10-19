class SearchController < ApplicationController
  def index
    byebug
    response = Faraday.get "https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=80203&radius=6.0&fuel_type=ELEC,LPG&limit=10"
  end

  # def conn
  #   Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json') do |faraday|
  #     faraday.adapter  Faraday.default_adapter
  #
  #   end
  # end
end
