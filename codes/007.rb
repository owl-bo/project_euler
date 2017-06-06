=begin
Problem 7 「10001番目の素数」 †
素数を小さい方から6つ並べると 2, 3, 5, 7, 11, 13 であり, 6番目の素数は 13 である.

10 001 番目の素数を求めよ.
=end

=begin
遅い。篩い法で作って数える方が早いかもしれないけど
N番目の素数を得るためにどれくらいの数まで確かめればいいのかわからない。
=end

def calc(prime_no)
  prime_count = 0
  num = 2
  loop do
    prime_count += 1 if is_prime? num
    return num if prime_count >= prime_no
    num += 1
  end
end

def is_prime?(num)
  (2..num / 2).each do |factor|
    return false if num % factor == 0
  end
  true
end
puts calc(10_001)
