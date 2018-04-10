# book/ru/chapter-13/examples/my_project/test/test_math.rb
# coding: utf-8
# 2018-04-10 12:03
# [HFR_p.429

require 'minitest/autorun'

class TestMath < MiniTest::Test
	def test_truth
		assert(2 + 2 == 4)
	end

	def test_fallacy
		assert(2 + 2 == 5)		
	end
end