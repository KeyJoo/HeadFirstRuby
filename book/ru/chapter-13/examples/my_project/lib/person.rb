# person.rb
# coding: utf-8
# 2018-04-10 07:55
# [HFR_p.426]

class Person
	attr_accessor :name, :age
	def introduction
		"Hello, my name is #{name}!"
	end

	# attr_accessor :age
	def input_age
		"I am #{age} years old"
	end
end