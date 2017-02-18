require 'minitest/autorun'
require_relative 'addition.rb'

class TestAddition < Minitest::Test
	def test_one_is_one
		assert_equal(1, 1)	
	end

	def test_one_one_one
		results = add(1, 1, 1)
		assert_equal(3, results)	
	end

	def test_one_two_three
		results = add(1, 2, 3)
		assert_equal(6, results)	
	end

	def test_four_ten_nineteen
		results = add(4, 10, 19)
		assert_equal(33, results)	
	end

end