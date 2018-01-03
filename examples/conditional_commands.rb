# conditional_commands.rb
# coding: utf-8

# Условные команды
if 1 == 1
	puts "I'll be printed!"
end

if 1 > 2
	puts "I won't!"
end

if 1 < 2
	puts "I'll be printed!"	
end

if ! true
	puts "I won't be printed!"	
end

if ! false
	puts "I will!"
end

if true && false
	puts "I won't!"	
end

# означает не равно
if 2 != 2
	puts "I won't!"
end