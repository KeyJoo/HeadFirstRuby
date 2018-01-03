#dog.rb
#
#

class Dog

	attr_reader :name, :years

	def name=(value)
	
		if value == ""
			raise "Name can't be blank!"	
		end
		@name = value		
	end

	def years=(value)
		
		if value < 0
			raise "An age of #{value} isn't valid!"			
		end
		
		@years = value
	end

	def move(destination)
		
		puts "#{@name} runs to the #{destination}."
	
	end

	def talk
	
		puts "#{@name} says Rrrrrr-gav -Gav!"		
	
	end

	def report_age
	
		puts "#{@name} is #{@years} years old"
	
	end
end

dog = Dog.new
dog.name = "Muh-Tar"
dog.years = 1
dog.report_age
dog.talk
dog.move("bed")