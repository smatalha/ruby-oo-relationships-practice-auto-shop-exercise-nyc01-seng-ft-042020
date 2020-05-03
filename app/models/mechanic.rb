class Mechanic

  attr_reader :name, :specialty
  @@mechanic = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self
  end

  def self.all
    @@mechanic
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    cars.map do |c|
      c.car_owner
    end
  end

  def car_owners_name
    cars.map do |c|
      c.car_owner.name
    end
  end

end
