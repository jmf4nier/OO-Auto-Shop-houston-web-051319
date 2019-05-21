require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jason = CarOwner.new("Jason")
stefan = CarOwner.new("Stefan")
feven = CarOwner.new("Feven")
carlos = CarOwner.new("Carlos")
bob = Mechanic.new("Bob", "classics")
john = Mechanic.new("John", "import")
kevin = Mechanic.new("Kevin", "import")
harry = Mechanic.new("Harry", "junker")
camaro = Car.new("Chevy", "Camaro", "muscle", carlos, john)
mustang = Car.new("Ford", "Mustang", "junker", jason, john)
lexus = Car.new("Lexus", "SC-400", "import", jason, kevin)
corolla = Car.new("Toyota", "Carolla", "junker", stefan, harry)



binding.pry
