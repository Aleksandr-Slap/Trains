require_relative 'Station.rb'
require_relative 'Route.rb'
require_relative 'Train.rb'

station = Station.new('Volhov')
station2 = Station.new('SpB')
route1 = Route.new(station, station2)
train = Train.new(123, 'Cargo', 10)
train.assign_a_route(route1)
train.next_station
train.previous_station
# train.join_vagon
