class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def self.all
    @@all 
  end
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end
  def cars_serviced
    Car.all.select do |car_obj|
      car_obj.classification == self.specialty
    end
  end
  def owners_of_serviced_cars
    self.cars_serviced.map {|car_obj| car_obj.owner}
  end
  def owner_names
    self.owners_of_serviced_cars.map {|owner_obj| owner_obj.name}
  end
end
