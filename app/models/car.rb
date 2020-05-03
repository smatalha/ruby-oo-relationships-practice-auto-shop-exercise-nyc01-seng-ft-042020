class Car

  attr_reader :make, :model, :mechanic, :car_owner, :classification
    @@all = []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.classifications 
      self.all.map do |car|
        car.classification
      end
  end

  def self.find_mechanics(classification)
    Mecanic.all.select do |m|
      m.specialty == classification

      #how can i test this class method
    end
  end

end
