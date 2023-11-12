function fact(n)
  if n > 2
    return n * fact(n - 1)
  elseif n < 0
    return fact(abs(n))
  else
    return n
  end
end

a = fact(6)
b = fact(10)

println(a, " ", b)

