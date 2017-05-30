=begin
Problem 6 「二乗和の差」 †
最初の10個の自然数について, その二乗の和は,

12 + 22 + ... + 102 = 385
最初の10個の自然数について, その和の二乗は,

(1 + 2 + ... + 10)2 = 3025
これらの数の差は 3025 - 385 = 2640 となる.

同様にして, 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.
=end

=begin
(x+y)^2 = x^2 + 2xy + y^2
x+yをx+y+zとしてもx,y,zの組合せについて2xy,2yz,2zxとなるので
2(xy + yz+ zx)を求めればいい。
=end


def calc(max_num)
  2 * [*1..max_num].combination(2).inject(0) { |sum, pair| sum + pair.inject(:*) }
end

puts calc 100
