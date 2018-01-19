def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise
  array_of_numbers = number.to_s.chars.map(&:to_i)
  # multiplication_check = 0
  if array_of_numbers.size > 1
    multiplication_check = array_of_numbers[0] * array_of_numbers[1]
  end
  if number.is_a?(String)
    false
  # elsif array_of_numbers.size == 2 && array_of_numbers[0] == 1
  #   false
  elsif array_of_numbers.size == 1
    true
  elsif multiplication_check == array_of_numbers[2] || multiplication_check.zero?
    false
  elsif number.to_s.chars == number.to_s.chars.uniq
    true
  else
    false
  end
end

