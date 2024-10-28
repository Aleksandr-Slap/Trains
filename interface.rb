require_relative 'station.rb'
require_relative 'route.rb'
require_relative 'train.rb'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'vagon'
require_relative 'passenger_vagon.rb'
require_relative 'cargo_vagon.rb'

# cargo1 = PassengerVagon.new
# cargo2 = CargoVagon.new
# puts cargo1.type
# puts cargo2.type
station = Station.new('Volhov')
station2 = Station.new('SpB')
station3 = Station.new('MGA')
route1 = Route.new(station, station2)
route1.add_intermedian_station(station3)
trainP = PassengerTrain.new(123)
trainC = CargoTrain.new(456)
# puts trainP.type
# puts trainC.type
# trainP.assign_a_route(route1)
# trainP.next_station
# trainP.next_station
# trainP.previous_station
# trainP.show_current_station
# trainP.show_next_station
# trainP.show_previous_station
vagon1 = PassengerVagon.new
vagon2 = PassengerVagon.new
vagon3 = PassengerVagon.new
vagon4 = CargoVagon.new
trainP.join_vagon(vagon1)
trainP.join_vagon(vagon2)
trainP.join_vagon(vagon3)
puts trainP.join_vagon(vagon4)
puts trainP.vagons.count
trainP.unhook_vagon(vagon3)
# binding.irbe
puts trainP.vagons.count
