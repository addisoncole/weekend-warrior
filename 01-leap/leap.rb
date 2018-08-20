
def leap_year?(year)

leap_year = false

if year % 4 == 0
  leap_year = true
  if year % 100 == 0
    leap_year = false
    if year % 400 == 0
      leap_year = true
    end
  else
    leap_year = true
  end
else
  leap_year = false
end

return leap_year

end
