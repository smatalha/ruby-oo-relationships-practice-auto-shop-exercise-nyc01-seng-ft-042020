class CarOwner
  
  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.car_owner == self}
  end

  def mechanics 
    cars.map do |c|
      c.mechanic
    end.uniq
  end

  def self.average_number_of_cars
    total_owners = Car.all.count
    total_cars = 0
    Car.all.each do |car_owner|
      total_cars = total_cars + car_owner.cars.count
    end
    total_cars/total_owners
  end

end
