require 'pry'
class ShoppingCart
	def initialize 
		@item_name=[]
		@item_price=[]
		@number_of_items={:banana=>0,:apple=>0,:orange=>0,:grape=>0,:watermelon=>0}
		@number_of_discounts={:banana=>0,:apple=>0,:orange=>0,:grape=>0,:watermelon=>0}

	end

	def add_item_to_cart(name,season,day)
		if @item_name.include?(table_of_prices(name)[:name])
			@number_of_items[name]+=1

		else
			@item_name.push(table_of_prices(name)[:name])
			@item_price.push(watermelon_price(name,season,day))
			@number_of_items[name]+=1

		end
	end

	def discount
		@item_name.each.with_index do |name,index|
			key=name.to_sym

			if name=="apple"
				@number_of_discounts[key]+=@number_of_items[key]/2
			elsif name=="orange"
				@number_of_discounts[key]+=@number_of_items[key]/3
			elsif name=="grape"

				@number_of_items[:banana]+=@number_of_items[key]/4
				@number_of_discounts[:banana]+=@number_of_items[key]/4
			end				
		end		
	end

	def show
		@item_name.each.with_index do |name,index|
			key=name.to_sym
			if @number_of_items[key]>1

				puts "#{@number_of_items[key]} #{@item_name[index]}s: #{(@number_of_items[key]-@number_of_discounts[key])*@item_price[index]}$"
			else

				puts "#{@number_of_items[key]} #{@item_name[index]}: #{(@number_of_items[key]-@number_of_discounts[key])*@item_price[index]}$"
			end
		end

	end

	def cost
		total=0
		@item_name.each.with_index do |name,index|
			key=name.to_sym
			total+=(@number_of_items[key]-@number_of_discounts[key])*@item_price[index]
		end
		puts "Total ammount: #{total}$"
	end

	def table_of_prices(name)
		table={:apple =>{:name=>"apple", :price=>{:spring=>10, :summer=>10, :autumn=>15, :winter=>12}}, :orange=>{:name=>"orange", :price=>{:spring=>5, :summer=>2, :autumn=>5, :winter=>5}}, :grape=>{:name=>"grape",:price=>{:spring=>15, :summer=>15, :autumn=>15, :winter=>15}}, :banana=>{:name=>"banana", :price=>{:spring=>20, :summer=>20, :autumn=>20, :winter=>21}}, :watermelon=>{:name=>"watermelon",:price=>50}}
		item_info=table[name]		
	end

	def watermelon_price(name,season,day)
		if day=:sunday && name==:watermelon
			price=100
		else
			price=(table_of_prices(name)[:price][season])
		end

	end



end

cart = ShoppingCart.new

cart.add_item_to_cart :apple, :spring, :sunday
cart.add_item_to_cart :banana, :spring, :sunday
cart.add_item_to_cart :banana, :spring, :sunday
cart.add_item_to_cart :orange, :spring, :sunday
cart.add_item_to_cart :orange, :spring, :sunday
cart.add_item_to_cart :orange, :spring, :sunday
cart.add_item_to_cart :apple, :spring, :sunday
cart.add_item_to_cart :grape, :spring, :sunday
cart.add_item_to_cart :grape, :spring, :sunday
cart.add_item_to_cart :grape, :spring, :sunday
cart.add_item_to_cart :grape, :spring, :sunday
cart.add_item_to_cart :watermelon, :spring, :sunday

cart.show
cart.cost

cart.discount
cart.show

cart.cost
