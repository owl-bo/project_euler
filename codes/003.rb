=begin
Problem 3 「最大の素因数」 †
13195 の素因数は 5, 7, 13, 29 である.

600851475143 の素因数のうち最大のものを求めよ.
=end

=begin
ポラードのロー法を使って解いてみる。
ロー法で利用する最大公約数の算出にはユークリッドの互除法を使う.
=end

module Math
  class << self
    def find_factor_by_rho(n)
      i = 2
      loop do
        x = i**2 + 1 % n
        y = (i / 2)**2 + 1 % n
        d = func_euclidean((x - y).abs, n)
        return nil if d == n
        return d if 1 < d && d < n
        i += 1
      end
    end

    def func_euclidean(x, y)
      # x >= y とする
      y, x = x, y if x < y
      loop do
        remainder = x % y
        break if remainder == 0
        x = y
        y = remainder
      end
      y
    end

    def find_prime_factor(num)
      factor = Math.find_factor_by_rho num
      loop do
        # ロー法で得た因数は素数でないこともあるのでチェック
        break if factor.nil?
        result = Math.find_factor_by_rho factor
        break if result.nil?
        factor = result
      end
      factor
    end
  end
end

def calc(target_num)
  max_prime = 0
  loop do
    factor = Math.find_prime_factor(target_num)
    max_prime = [(factor || target_num), max_prime].max
    break if factor.nil?
    target_num /= factor
  end
  max_prime
end

# puts find_prime_factor 150
# puts calc 13195
puts calc(600_851_475_143)
