	pizza = ["cheese", "gluten", "tomatoes"]
	pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
	water = ["h", "h", "o"]

class Person
	attr_accessor :name,:allergies

	def initialize(name, allergies)
		@name = name
		@allergies = allergies 
		@stomach = []
	
	end

	def eat(food)
		
		food.each do |ingredient|
			if @allergies.include?(ingredient)
				puts "Allergy_error, you threw up!"
				@stomach = []
				break
			else @stomach.push(ingredient)
			end
		end
	end
end

Kevin = Person.new("Kevin", ["gluten","pasta"])