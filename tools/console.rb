require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
co1 = CarOwner.new("Talha")
co2 = CarOwner.new("Abu")

m1 = Mechanic.new("Mohamed", "clunker")
m2 = Mechanic.new("Mian", "antique")


car1 = Car.new("Toyota", "Camry", "Clunker", m1, co1)
car2 = Car.new("Toyota", "corrola", "antique", m2, co1)
binding.pry
