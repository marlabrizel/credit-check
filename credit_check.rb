class CreditCheck

  def initialize(card_number)
    @card_number = card_number
  end

  def valid?
    numbers = @card_number.split("").reverse!
    numbers.map! { |number| number.to_i }
    even_digits = numbers.each_slice(2).map(&:last)
    odd_digits = numbers.each_slice(2).map(&:first).reduce(:+)
    multiplied = even_digits.map { |digit| digit * 2 }
    sum = multiplied.to_s.chars.map(&:to_i).reduce(:+) + odd_digits
    if sum % 10 == 0
      return true
    else
      return false
    end
  end

end
