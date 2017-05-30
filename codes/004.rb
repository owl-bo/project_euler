=begin
Problem 4 「最大の回文積」 †
左右どちらから読んでも同じ値になる数を回文数という. 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.

では, 3桁の数の積で表される回文数の最大値を求めよ.
=end

=begin
例によってヒューリスティックに計算する。
=end

DIGIT = 3
MAX_NUM = ('9' * DIGIT).to_i
CALC_UNIT = 10**(DIGIT - 1)

def cycling?(num)
  str = num.to_s
  len = (str.length.to_f / 2).ceil
  str.chars.first(len) == str.chars.last(len).reverse
end

def calc
  max_num = 0
  start_num = MAX_NUM - CALC_UNIT
  end_num = MAX_NUM
  loop do
    max_num = search_cycling_num(start_num, end_num)
    break unless max_num == 0
    start_num -= CALC_UNIT
    end_num -= CALC_UNIT
  end
  max_num
end

def search_cycling_num(start_num, end_num)
  max_num = 0
  calc_range = (start_num..end_num)
  # 書き方はダサいがメモリは節約出来てるはず
  calc_range.each do |i|
    calc_range.each do |j|
      next unless cycling? i * j
      max_num = i * j if i * j > max_num
      break
    end
  end
  max_num
end

puts calc
