require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
require('pry')

get ('/') do
  erb(:index)
end

get ('/result') do
  parcel_instance = Parcels.new(params.fetch('parcel_height').to_i, params.fetch('parcel_length').to_i, params.fetch('parcel_width').to_i, params.fetch('parcel_weight').to_i)
  @shipping_cost = parcel_instance.cost_to_ship()
  erb(:result)
end
