# look through an array and try to buy on the lowest number then sell on the highest number. You can only sell if you have already bought.
#2 ways to impliment:
#buy on the lowest day and sell on the heighest day after that, if there are no days after pick the second lowest.
#the best way to do this would to attach a position to each value, then sort them by value to find the lowest. then remove all the numbers that are before that numbers position
#leaving you with only the numbers that come after that position, pick the heighest number

# the oher more difficult way would be ti take each number in the array and assume we buy it, then dinf the diffrence between that and the latter numbers. Once done move on to the next position
#the best day to buy would the the one that output the biggest diference


#implementation 1
#imp 2 will be on other file to prevent confution. stock values will be the same

stock_value = [10,9,9,12,10,9,11]

#try1
# stock_hash = stock_value.each_with_index.map { |value, index| }

#try2
# stock_hash = {}
# stock_value.each do |i|
#   stock_hash[i] = stock_value.find_index
# end

# puts stock_hash

#try3
stock_hash = Hash.new
stock_value.each_with_index{|value, index| stock_hash[value] = index}
puts stock_hash