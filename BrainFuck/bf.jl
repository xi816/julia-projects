function run(code)
  code = string(code, "@")
  pos = 1

  mem = zeros(Int32, 1000)
  mpos = 1

  stloops = []

  while code[pos] != '@'
    if code[pos] == '+'
      mem[mpos] += 1
    elseif code[pos] == '-'
      mem[mpos] -= 1
    elseif code[pos] == '<'
      mpos -= 1
    elseif code[pos] == '>'
      mpos += 1
    elseif code[pos] == '.'
      print('\0' + mem[mpos])
    elseif code[pos] == ','
      mem[mpos] = read(stdin, Char)
    elseif code[pos] == '['
      if mem[mpos] == 0
        push!(stloops, pos)
        pos += 1
        while length(stloops) > 0
          if code[pos] == '['
            push!(stloops, pos)
          end
          if code[pos] == ']'
            pop!(stloops)
          end
          pos += 1
        end
      else
        push!(stloops, pos)
      end
    elseif code[pos] == ']'
      if mem[mpos] ≠ 0
        pos = pop!(stloops) - 1
      else
        pop!(stloops)
      end
    end

    pos += 1
  end
end

f = open("code.bf", "r")
cd = read(f, String)
close(f)

run(cd)

