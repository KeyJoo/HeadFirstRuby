# test_something.rb
# coding: utf-8
# 2018-04-10 07:40
# [HFR_p.425]

require 'minitest/autorun'

class TestSomething < Minitest::Test
	def test_true_assertion
		assert(true)
	end

	def test_false_assertion
		assert(false)
	end
end