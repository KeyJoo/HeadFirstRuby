# 2018-09-04
# 17:55
# Student: Vladimir Pavlychev @KeyJoo

# p 'Enter password'
# my_password

# Wow!!! Need last lin is clear!!!

def password_weak?(password)
  input = File.open('password.txt', 'r')

  while (line = input.gets)
    line.strip!

    if password.include? line
      return true
    end
  end

  return false
end

p 'Enter password: '
my_password = gets.strip

if password_weak?(my_password)
  p 'Your password is weak'
else
  p 'Your password is not weak'
end
