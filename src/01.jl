input = ""
open("./inputs/01.in", "r") do f
  global input = read(f, String)    
end

input = split(input, "\n")

nums = []
for line in input
  num = 0
  for char in line
    try
      num += 10*parse(Int, char)
      break
    catch
      continue
    end
  end
  for char in reverse(line)
    try
      num += parse(Int, char)
      break
    catch
      continue
    end
  end
  append!(nums, num)
end

result = sum(+, nums)
println(result)
