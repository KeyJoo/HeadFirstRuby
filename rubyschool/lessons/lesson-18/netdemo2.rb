# 2018-09-04
# 18:30

require 'net/http'
require 'uri'

uri = URI.parse 'https://www.osarts.ru/'
response = Net::HTTP.get uri
p response
