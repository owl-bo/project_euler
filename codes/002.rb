=begin
Problem 2 「偶数のフィボナッチ数」 †
フィボナッチ数列の項は前の2つの項の和である. 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
数列の項の値が400万以下の, 偶数値の項の総和を求めよ.
=end

def calc(max_num)
  num = [1, 2]
  calc_num = 0
  loop do
    break if num[1] >= max_num
    calc_num += num[1] if num.last % 2 == 0
    next_num = num.inject(&:+)
    num[0] = num[1]
    num[1] = next_num
  end
  calc_num
end

puts calc(4_000_000)
