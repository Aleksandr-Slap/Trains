class Train
  attr_accessor :speed, :vagons
  attr_reader :route, :number, :current_station

  def initialize(number, type, vagons)
    @number = number
    @type = type
    @vagons = vagons
    @speed = 0
  end

  def assign_a_route(route)
    @route = route.show_stations
    self.route[0].accept_train(self)
    @current_station = self.route[0]
  end

  def next_station
    return puts 'This last station' if self.route.last == current_station
    current_station.send_a_train(self)
    @current_station = self.route[self.route.find_index(current_station) + 1 ]
    current_station.accept_train(self)
  end

  def previous_station
    return puts 'This first station' if self.route.first == current_station
    current_station.send_a_train(self)
    @current_station = self.route[self.route.find_index(current_station) - 1 ]
    current_station.accept_train(self)
  end

  def show_current_station
    puts "Curent station is #{@current_station.name}"
  end

  def show_next_station 
    return puts 'This last station' if @current_station == @route.last
    puts "Next station is #{@route[@route.find_index(current_station) + 1 ].name }"
  end
  
  def show_previous_station
    return puts 'This first station' if @current_station == @route.first
    puts "Previous station is #{@route[@route.find_index(current_station) - 1 ].name }"
  end  

  def join_vagon
    speed == 0 ? self.vagons += 1 : 'The train is moving!'
  end

  def unhook_vagon
    speed == 0 ? self.vagons -= 1 : 'The train is moving!'
  end
end