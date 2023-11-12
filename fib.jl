function fib(n)
  if n < 2
    return n
  else
    return fib(n - 1) + fib(n - 2)
  end
end

a = fib(parse(Int32, ARGS[1]))
println(a)

