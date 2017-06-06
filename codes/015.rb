=begin
Problem 15 「格子経路」 †
2×2 のマス目の左上からスタートした場合, 引き返しなしで右下にいくルートは 6 つある.

では, 20×20 のマス目ではいくつのルートがあるか.
=end

=begin
単純な経路数問題は縦r, 横cより (r+c)! / (r!*c!)によって求まる
=end

def calc(row, column)
  (row + column).factorial / (row.factorial * column.factorial)
end

class Integer
  def factorial
    (1..self).inject(1, :*)
  end
end

puts calc(20, 20)
