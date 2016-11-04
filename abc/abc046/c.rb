def get_min_point(points, ratio)

  ap, bp = points
  ar, br = ratio

  an = get_min_count(ap, ar)
  bn = get_min_count(bp, br)

  mn = [an, bn].max
  result = [ar*mn, br*mn]
  result
end

def get_min_count(ap, ar)
  if ap % ar == 0
    (ap / ar)
  else
    (ap / ar) + 1
  end
end

inputs = readlines.map(&:chomp)
points = inputs[1].split(" ").map(&:to_i)
ratios = inputs[2..-1].map {|x| x.split(" ").map(&:to_i) }

ratios.each do |ratio|
  points = get_min_point(points, ratio)
end

puts points.reduce(:+)
