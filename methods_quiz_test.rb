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

end
