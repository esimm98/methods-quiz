require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal true, @m.has_teen?(11, 12, 13)
		assert_equal true, @m.has_teen?(60, 18, 10)
		assert_equal true, @m.has_teen?(9, 5, 19)
		assert_equal false, @m.has_teen?(1, 2, 3)
		assert_equal false, @m.has_teen?(10, 11, 12)
	end

	def test_not_string
		assert_equal "not no", @m.not_string("no")
		assert_equal "not yes", @m.not_string("yes")
		assert_equal "not no", @m.not_string("not no")
		assert_equal "not yes", @m.not_string("not yes")
		assert_equal "not working", @m.not_string("working")
	end

	def test_icy_hot
		assert_equal true, @m.icy_hot?(-1, 101)
		assert_equal true, @m.icy_hot?(200, -100)
		assert_equal false, @m.icy_hot?(0, 1000)
		assert_equal false, @m.icy_hot?(-500, 100)
		assert_equal false, @m.icy_hot?(0, 100)
	end

	def test_closer_to
		assert_equal 0, @m.closer_to(5, 2, 8)
		assert_equal 0, @m.closer_to(-10, -12, -8)
		assert_equal 99, @m.closer_to(100, 99, 105)
		assert_equal 49, @m.closer_to(50, 48, 49)
	end

	def test_two_as_one
		assert_equal true, @m.two_as_one?(1, 2, 3)
		assert_equal true, @m.two_as_one?(17, 25, 8)
		assert_equal true, @m.two_as_one?(-10, -5, -5)
		assert_equal true, @m.two_as_one?(0, 0, 0)
		assert_equal false, @m.two_as_one?(5, 5, 5)
		assert_equal false, @m.two_as_one?(1, 3, 5)
	end

	def test_pig_latinify
		assert_equal "orangeway", @m.pig_latinify("ORANGE")
		assert_equal "appleway", @m.pig_latinify("   ApPle   ")
		assert_equal "igpay", @m.pig_latinify("pig")
		assert_equal "ythmrhay", @m.pig_latinify("rhythm")
		assert_equal "ellowyay", @m.pig_latinify("yellow")
	end

end
