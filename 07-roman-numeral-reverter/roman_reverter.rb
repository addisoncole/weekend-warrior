require 'pry'

def roman_reverter(number)
  roman_numeral = number.scan /\w/
  arabic_number = 0

count = roman_numeral.length
i = 0
while count != 0 do
  if roman_numeral[i] == "M"
    arabic_number += 1000
  elsif roman_numeral[i] == "D"
    arabic_number += 500
  elsif roman_numeral[i] == "C"
    if roman_numeral[i + 1] == "M"
      arabic_number += 900
      count -= 1
      i += 1
    elsif roman_numeral[i + 1] == "D"
      arabic_number += 400
      count -= 1
      i += 1
    else
      arabic_number += 100
    end
  elsif roman_numeral[i] == "L"
    arabic_number += 50
  elsif roman_numeral[i] == "X"
    if roman_numeral[i + 1] == "C"
      arabic_number += 90
      count -= 1
      i += 1
    elsif roman_numeral[i + 1] == "L"
      arabic_number += 40
      count -= 1
      i += 1
    else
      arabic_number += 10
    end
  elsif roman_numeral[i] == "V"
    arabic_number += 5
  elsif roman_numeral[i] == "I"
    if roman_numeral[i + 1] == "X"
      arabic_number += 9
      count -= 1
      i += 1
    elsif roman_numeral[i + 1] == "V"
      arabic_number += 4
      count -= 1
      i += 1
    else
      arabic_number += 1
    end
  end
  count -= 1
  i += 1
end

return arabic_number
end


# oops this converst arabic to roman
#   if decimal_number % 1000 == 0
#     count = (number / 1000)
#     count.times do
#       roman_number += "M"
#       decimal_number -= 1000
#     end
#   elsif decimal_number % 500 == 0
#     count = (number / 500)
#     count.times do
#       roman_number += "D"
#       decimal_number -= 500
#     end
#   elsif decimal_number % 100 == 0
#     count = (number / 100)
#     count.times do
#       roman_number += "C"
#       decimal_number -= 100
#     end
#   elsif decimal_number % 50 == 0
#     count = (number / 50)
#     count.times do
#       roman_number += "L"
#       decimal_number -= 50
#     end
#   elsif decimal_number % 10 == 0
#     count = (number / 10)
#     count.times do
#       roman_number += "X"
#       decimal_number -= 10
#     end
#   elsif decimal_number % 5 == 0
#     count = (number / 5)
#     count.times do
#       roman_number += "V"
#       decimal_number -= 5
#     end
#   else
#     count = number
#     count.times do
#       roman_number += "I"
#     end
#   end
# return roman_number
# end
