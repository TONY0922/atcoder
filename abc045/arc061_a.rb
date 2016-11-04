_int = gets.chomp
nums = _int.split("").map(&:to_i)
_sum = _int.to_i

for i in 1..(nums.size-1)
  _ccc = []
  (1..nums.size-1).to_a.combination(i) do |comb|
    d_nums = nums.dup
    p "*"*10
    p comb
    comb.reverse.each do |index|
      d_nums.insert(index, "+")
    end
    _ccc << d_nums.join.tap{|x| p x}.split("+").map(&:to_i).tap{|x| p x}.reduce(:+)
  end
  _sum += _ccc.reduce(:+)
end

puts _sum
