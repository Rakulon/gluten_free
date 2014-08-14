
class Person
	def initialize(name, allergy)
	    @stomach = [] 
	    @allergy = allergy
		@name = name
	end
	  
	def eat(food)
		food.each do |nom|
			puts nom
			@stomach += food
			if @allergy.include?(nom)
				puts "(Allergy Error! Going into shock! Vomiting! Get to hospital!)"
				@stomach = []
				#unless @alergy.match(food)
				# else
				# puts "(Alergy Error! Going into shock! Vomiting! Get to hospital!)"
				# end
				# self
			end
		end
	end		
end
Todd = Person.new("Todd", ["gluten", "juice"])
p Todd
Todd.eat(["juice", "water"])
p Todd
