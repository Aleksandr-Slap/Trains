class Station
  attr_reader :name
  def initialize(name)
    @name = name
    @trains = []
  end

  def accept_train(train)
    @trains << train
    puts "Train number #{train.number} arrived at the #{self.name}" 
  end

  def show_trains
    puts "There are no trains at the station" if @trains.empty?
    @trains.each { |train| puts "Train number #{train.number} it at the station"}
  end

  def show_trains_type
    passengers = 0
    cargo = 0
    @trains.each { |train| train.type == "Cargo" ? cargo += 1 : passengers += 1 }
    puts "At the station #{passengers} passengers trains and #{cargo} cargo"
  end

  def send_a_train(train)
    puts "This train is not at the station" unless @trains.include?(train)
    @trains.delete(train)
    puts "The train #{train.number} left the station"
  end  
end 