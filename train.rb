require_relative 'Station.rb'
require_relative 'Route.rb'

class Train
  attr_accessor :speed, :vagons
  attr_reader :route, :number

  def initialize(number, type, vagons)
    @number = number
    @type = type
    @vagons = vagons
    @speed = 0
  end

  def join_vagon
    speed == 0 ? @vagons += 1 : "The train is moving!"
  end

  def unhook_vagon
    speed == 0 ? @vagons -= 1 : "The train is moving!"
  end

  def assign_a_route(route)
    @route = route.show_stations
    @route[0].accept_train(self)
  end
end
