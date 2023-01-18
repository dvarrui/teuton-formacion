#!/usr/bin/ruby
require_relative 'operation'
require 'test/unit'

class OperationTest < Test::Unit::TestCase
  def setup
    @op = Operation.new(2, 3)
  end

  def test_num1
    assert_equal 2, @op.num1
  end

  def test_num2
    assert_equal 3, @op.num2
  end

  def test_sum
    assert_equal 5, @op.sum
  end
end
