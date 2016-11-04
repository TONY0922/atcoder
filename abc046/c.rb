# def get_min_point(points, ratio)
#
#   count = 1
#
#   while true
#     tmp = ratio.map {|x| x * count}
#
#     [0, 1].each do |i|
#       if points[i] < tmp[i]
#         points[i] = tmp[i]
#       end
#     end
#
#     break if [0, 1].all? do |i|
#       points[i] == tmp[i]
#     end
#
#     count += 1
#   end
#
#   points
# end

def get_min_point(points, ratio)

  count = 1

  while true
    tmp = ratio.map {|x| x * count}

    [0, 1].each do |i|
      if points[i] < tmp[i]
        points[i] = tmp[i]
      end
    end

    break if [0, 1].all? do |i|
      points[i] == tmp[i]
    end

    count += 1
  end

  points
end

inputs = readlines.map(&:chomp)
points = inputs[1].split(" ").map(&:to_i)
ratios = inputs[2..-1].map {|x| x.split(" ").map(&:to_i) }

ratios.each do |ratio|
  points = get_min_point(points, ratio)
end

puts points.reduce(:+)
