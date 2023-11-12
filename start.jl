function fuckin_first_function(x, y, z)
  if z == 0
    return 420
  elseif z == 1
    return 420 - x
  else
    println("Ok")
  end
  print("Hi!\n")

  return 69
end

print("Enter the number: ")
fuckin_first_function(5, 6, parse(Int64, readline()))

