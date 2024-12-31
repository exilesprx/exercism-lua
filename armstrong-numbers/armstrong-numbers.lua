local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  local len = #tostring(number)
  local sum = 0
  for c in tostring(number):gmatch('%d') do
    sum = sum + c^len
  end

  return sum == number
end

return ArmstrongNumbers
