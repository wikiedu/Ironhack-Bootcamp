class Car
  attr_accessor :brand, :colour, :hp, :sound, :cities
  def initialize(brand, colour, hp, sound)
    @brand = brand
    @colour = colour
    @hp = hp
    @sound = sound
    @cities = []
  end

  def noise
	puts "#{sound}"
end

def self.speed_control
	puts "Enter your current speed:"
	speed=gets.chomp.to_i
	if speed>100
		puts "Your are running above 100 km/h! Slow down!"
	end
end

# Guardem cities a una matriu
# def visit(city)
# 	@cities.push(city)
# end

# def cities
# 	puts @cities
# end

def visit(city)
	cities = IO.readlines("cities.txt").map{|line| line.chomp}
	cities << city
	IO.write("cities.txt", cities.join("\n"))
end

def cities
	IO.readlines("cities.txt")
end

end


class Racing < Car

  def initialize(brand, colour, hp)
    @brand = brand
    @colour = colour
    @hp = hp
    @sound = "BROOOM"
    @cities = []
  end


end


class Person
	attr_reader :name
	attr_accessor :age
	def initialize(name, age)
		@name = name
		@age = age
	end
end

edu=Person.new("Edu",24)
a=edu.name
print a


ferrari=Car.new("Ferrari","Red",540,"Broom")
mercedes=Car.new("Mercedes", "Black", 210, "Broooooooom")
ferrari.noise
mercedes.noise

mercedes.visit("Barcelona")
mercedes.visit("Madrid")
mercedes.cities


# Car.speed_control


