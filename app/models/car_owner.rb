# frozen_string_literal: true

class CarOwner
  attr_reader :name
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select do |car_obj|
      car_obj.owner == self
    end
  end
  def mechanics
    self.cars.map {|car_obj| car_obj.mechanic}
  end
  def cars_count
    count = (Car.all.select do |car_obj|
      car_obj.owner == self
    end).length
  end
  def self.average_cars_per_owner
    count = self.all.map do |owner_obj|
      owner_obj.cars_count
    end
    (count.inject(:+) / count.length).to_f
  end
end


array = all.each do {kjdfadfs}

  en