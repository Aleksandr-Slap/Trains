require_relative 'Station.rb'
require_relative 'Route.rb'
require_relative 'Train.rb'

station = Station.new('Volhov')
station2 = Station.new('SpB')
station3 = Station.new('MGA')
route1 = Route.new(station, station2)
route1.add_intermedian_station(station3)
train = Train.new(123, 'Cargo', 10)
train.assign_a_route(route1)
train.next_station
train.next_station
train.previous_station
train.show_current_station
train.show_next_station
train.show_previous_station
# train.join_vagon
# binding.irb