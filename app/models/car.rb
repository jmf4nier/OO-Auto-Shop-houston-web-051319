# frozen_string_literal: true

class Car
  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []
  def self.all
    @@all
  end
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end
  def mechanics_for_classification
    Mechanic.all.select do |mechanic_obj|
      mechanic_obj.specialty == self.classification
    end


  end
  def self.all_classifications
    Car.all.map {|car_obj| car_obj.classification}
  end
  
end
