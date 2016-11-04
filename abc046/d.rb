inputs = readlines.map(&:chomp)[0]
jankens = inputs.split("")

jankens_per = jankens.select {|x| x == "p" }
puts jankens.size / 2 - jankens_per.size
