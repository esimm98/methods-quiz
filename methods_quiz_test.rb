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

end
