=begin
Problem 1 「3と5の倍数」 †
10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.

同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.
=end

=begin
1000未満で計算量もメモリも気にせず書いてしまう
=end

def calc(max_num)
  (1..max_num-1).select { |num| num.modulo(3) == 0 || num.modulo(5) == 0  }.inject(&:+)
end

puts calc(1000)
