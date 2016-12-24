inputs = readlines.map(&:chomp)

num, avg = inputs[0].split(" ").map(&:to_i)
points = inputs[1].split(" ").map(&:to_i)

# print "#{num}, #{avg} \n"

answer_cashes = []
answer = 0

for i in 1..num

  answer_cashes = []
  points.combination(i).to_a.each do |comb_points|
    if comb_points.reduce(:+) == i * avg
      answer_cashes << comb_points
      answer += 1
    end
  end
end

# puts answer_cashes.size
puts answer
