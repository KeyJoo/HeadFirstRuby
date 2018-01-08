# greeting.rb
# 2018-01-08 10:53
# youtube-lesson [hasBrains-Learn_Ruby episod 11]

def hello_world(first_name="",last_name="")
	greeting = "Hello world!\n" 
	
	unless first_name == "" && last_name ==""
		greeting += "My name is " + first_name + " " + last_name 
	end
	greeting
end

puts						hello_world("Alexander", "Lesyunin")
#send_via_email hello_world("Vladimir", "Lenin")
#send_over_http hello_world