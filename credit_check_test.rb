gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'

class CreditCheckTest < Minitest::Test

  def test_a_valid_card_is_valid
    cc = CreditCheck.new("5541808923795240")
    assert cc.valid?, 'Expected CreditCheck to return valid, was invalid!'
  end

  def test_an_invalid_card_is_invalid
    cc = CreditCheck.new("5541801923795240")
    refute cc.valid?, 'Expected CreditCheck to return invalid, was valid!'
  end


end
