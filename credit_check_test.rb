gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'

class CreditCheckTest < Minitest::Test

  def test_a_valid_card_is_valid
    valid_numbers = ["5541808923795240", "4024007136512380", "6011797668867828"]
    valid_numbers.each do |number|
      cc = CreditCheck.new(number)
      assert cc.valid?, "Expected #{number} to return valid, was invalid!"
    end
  end

  def test_an_invalid_card_is_invalid
    invalid_numbers = ["5541801923795240", "4024007106512380", "6011797668868728"]
    invalid_numbers.each do |number|
      cc = CreditCheck.new(number)
      refute cc.valid?, "Expected #{number} to return invalid, was valid!"
    end
  end

end
