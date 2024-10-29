require_relative 'station.rb'
require_relative 'route.rb'
require_relative 'train.rb'
require_relative 'passenger_train'
require_relative 'cargo_train'
require_relative 'vagon'
require_relative 'passenger_vagon.rb'
require_relative 'cargo_vagon.rb'

class Interface
  def initialize
    @trains = []
    @stations =[]
    @routs = []
  end

  def start!
    loop do
      puts 'Введите 1 если хотите создать объект'
      puts 'Введите 2 если хотите сделать действия с объектом'
      puts 'Введите 3 если хотите узнать информацию об объекте'
      puts 'Введите 0 если хотите завершить программу'

      input = gets.chomp.to_i

      case input
      when 1
        create_objects
      when 2
        action_objects
      when 3
        viev objects
      when 0
        break
      end
    end
  end  

  def create_objects
    loop do
      puts 'Введите 1 если хотите создать пассажирский поезд'
      puts 'Введите 2 если хотите создать грузовой поезд'
      puts 'Введите 3 если хотите создать станцию(создайте минимум две станции)'
      puts 'Введите 4 если хотите создать маршрут'
      puts 'Введите 5 если хотите создать пассажирский вагон'
      puts 'Введите 6 если хотите создать грузовой вагон'

      input = gets.chomp.to_i

      case input
      when 1
        create_passenger_train
      when 2
        create_cargo_train
      when 3
        create_station
      when 4
        create_route
      when 5
        create_passenger_vagon
      when 6
        create_cargo_vagon
      when 0
        break
      end  
    end
  end
      

  def create_passenger_train
    puts 'Введите номер поезда'
    number = gets.chomp
    train = PassengerTrain.new(number)
    @trains << train  
    puts "Пассажирский поезд №:#{train.number} создан"
  end

  def create_cargo_train
    puts 'Введите номер поезда'
    number = gets.chomp
    train = PassengerTrain.new(number)
    @trains << train  
    puts "Грузовой поезд №:#{train.number} создан"
  end

  def create_station
    puts 'Создайте минимум две станции!'
    puts 'Введите имя станци'
    station_name = gets.chomp
    station = Station.new(station_name.capitalize)
    @stations << station
    puts "Station #{station.name} created"
  end

  def create_route
    return puts 'Недостаточно станций' if @stations.size < 2
    # binding.irb
    puts 'Вы должы были создать минимуи 2 станции'
    @stations.each_with_index { |station, index| puts "#{index + 1}: #{station.name}"}
    puts 'Выберете первую станцию'
    first_station = @stations[gets.chomp.to_i - 1]
    puts 'Выберете последнюю станцию'
    last_station = @stations[gets.chomp.to_i - 1]
    route = Route.new(first_station, last_station)
    puts "Вы создали маршрут #{first_station.name} - #{last_station.name}"
  end

  def create_passenger_vagon
   
  end

  def create_cargo_vagon
    
  end  
end


Interface.new.start!