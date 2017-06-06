=begin
Problem 16 「各位の数字の和」 †
2^15 = 32768 であり, 各位の数字の和は 3 + 2 + 7 + 6 + 8 = 26 となる.

同様にして, 2^1000 の各位の数字の和を求めよ.
=end

def calc(num)
  (2**num).to_s.chars.map(&:to_i).inject(:+)
end

puts calc 1000
