class Route
  attr_reader :first_station, :last_station, :intermediate_stations

  def initialize(first_station, last_station)
    @first_station = first_station
    @last_station = last_station
    @intermediate_stations = []
  end

  def add_intermedian_station(name_station)
    puts 'Such a station already exists' if intermediate_stations.include?(name_station)
    intermediate_stations << name_station
    puts "Stantion #{name_station.name} adeed"
  end

  def delete_station(name_station)
    puts 'There is no such station' if @intermediate_stations.include(name_station)
    intermediate_stations.delete(name_station)
  end

  def show_stations
    [first_station] + intermediate_stations + [last_station]
  end
end