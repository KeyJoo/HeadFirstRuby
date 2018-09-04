# github:HeadFirstRuby/rubyschool/lessons/lesson-18/netdemo2.rb
# 2018-09-04
# 18:30

require 'net/http'
require 'uri'

uri = URI.parse 'https://www.osarts.ru/'
res = Net::HTTP.get uri
p res
