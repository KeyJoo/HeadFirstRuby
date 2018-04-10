# book/ru/chapter-13/examples/my_project/test/test_person.rb
# coding: utf-8
# 2018-04-10 08:13
# [HFR_p.426]

require 'minitest/autorun'
require 'person'

class TestPerson < MiniTest::Test
	def test_introduction
		person = Person.new
		person.name = 'Bob'
		assert(person.introduction == 'Hello, my name is Bob!')
	end
end
