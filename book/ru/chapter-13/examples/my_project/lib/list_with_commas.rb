# book/ru/chapter-13/examples/my_project/lib/list_with_commas.rb
# coding: utf-8
# 2018-04-10 12:23
# [HFR_p.432]

class ListWithCommas
	attr_accessor :items
	def join
		last_item = "and #{items.list}"
		other_items = items.slice(0, items.length- 1).join(', ')
		"#{other_items}, #{last_item}"		
	end
end