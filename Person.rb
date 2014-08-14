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
		count = 0
		food.each do |ingredient|
			if @allergies.include?(ingredient)
				count += 1
				puts "Allergy_error"
			else @stomach.push(ingredient)
			end
		end
		if count > 0 
			@stomach = []
			puts "BLEHHHHH!!!!!(you just vomited)"
		end
	end
end

Kevin = Person.new("Kevin", ["gluten","pasta"])