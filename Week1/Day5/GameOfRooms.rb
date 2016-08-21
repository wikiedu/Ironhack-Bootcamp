class UserInput
	attr_accessor :input
	def initialize(input)
		@input=input
	end

end


class Rooms
	attr_accessor :space
	def initialize
		@space={}

	end

	def database
		database={
			:Bedroom=>{:positions=>[[0,0],[0,1]],:exit=>"South",:items=>nil,:monster=>nil},
			:Hospital=>{:positions=>[[1,1],[2,1],[3,1]],:exit=>["East","West"],:items=>"weapon",:monster=>nil},
			:DarkRoom=>{:positions=>[[1,0],[2,0],[3,0]],:exit=>nil,:items=>nil,:monster=>"Zombie"},
			:Lab=>{:positions=>[[1,2],[2,2],[3,2],[1,3],[2,3],[3,3]],:exit=>"West",:items=>"cure injection",:monster=>nil},
			:SaveRoom=>{:positions=>[[0,2],[0,3]],:exit=>"South",:items=>nil,:monster=>nil}
		}
		@space=database
	end

end


class Player
	attr_accessor :position, :inventory
	def initialize 
		@position=[0,0]
		@inventory=[]

	end
end

class Sentences
	def initialize(room_name)
		@room_name=room_name
	end

	def output
		puts "You are in a #{@room_name}."
		if @database[room_name][:exit]
			@database[room_name][:exit].each_index do |index|
			print "There is a door to the #{@database[room_name][:exit][index]. }"
		end
		else
			print "There is no exit here."
		end
		if @database[room_name][:items]
			@database[room_name][:items].each_index do |index|
			print "There is a door to the #{@database[room_name][:items][index]. }"
		end

	end

end


rooms=Rooms.new.database
puts rooms
print player