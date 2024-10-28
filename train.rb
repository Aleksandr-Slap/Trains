class Train
  attr_accessor :speed
  attr_reader :route, :type, :number, :current_station, :vagons

  def initialize(number, type)
    @number = number
    @type = type
    @vagons = []
    @speed = 0
  end

  def assign_a_route(route)
    @route = route.show_stations
    self.route[0].accept_train(self)
    @current_station = self.route.first
  end

  def next_station
    return puts 'This last station' if self.route.last == current_station
    send_a_train_at_station
    @current_station = @route[index_current_station + 1]
    accept_train_at_station
  end

  def previous_station
    return puts 'This first station' if self.route.first == current_station
    send_a_train_at_station
    @current_station = @route[index_current_station - 1]
    accept_train_at_station
  end

  def show_current_station
    puts "Curent station is #{@current_station.name}"
  end

  def show_next_station 
    return puts 'This last station' if @current_station == @route.last
    puts "Next station is #{@route[index_current_station + 1 ].name }"
  end
  
  def show_previous_station
    return puts 'This first station' if @current_station == @route.first
    puts "Previous station is #{@route[index_current_station - 1 ].name }"
  end  

  def join_vagon(vagon)
    speed == 0 && self.type == vagon.type ? self.vagons << vagon : 'The train is moving or invalid vagon type!'
  end

  def unhook_vagon(vagon)
    speed == 0 && self.type == vagon.type ? self.vagons.delete(vagon) : 'The train is moving or invalid vagon type!'
  end

  protected

  def index_current_station
    @route.find_index(current_station)
  end

  def send_a_train_at_station
    current_station.send_a_train(self)
  end

  def accept_train_at_station
    current_station.accept_train(self)
  end  
end