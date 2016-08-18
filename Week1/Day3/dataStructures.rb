
#exercise 1
hash={:wat => [1,2,{:wut => [1,[[0,1,2,3,4,5,6,7,8,{:bbq => "Hello"}]]]},4]}
arr=[[0,1,2,3,4,{:secret => {:unlock => [0,"Hello"]}}]]

p hash[:wat][2][:wut][1][0][9][:bbq]
p arr[0][5][:secret][:unlock] [1]


# exercise 2

class CarDealer
attr_reader :inventory

	def initialize (inventory)
		@inventory = inventory
	end

	def cars(brand)
		@inventory[brand]
	end

	def print_inventory
		@inventory.each do |brand, cars|
			puts "#{brand}: #{cars.join(', ')}" 
		end
	end
end

inventory={"Ford" => ["Fiesta", "Mustang"], "Honda" => ["Civic", "CR-V"]}
car_dealer=CarDealer.new(inventory)
puts car_dealer.cars("Ford")
car_dealer.print_inventory

