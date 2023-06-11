#looks through the array and buys on the higest day unless the highest day is the last day. if it is then it will go to the second highest day. once it finds the
#highest day that is not the lat day it will buy. then it will sell on the lowest day aslong as the lowest day is not before the day that was bought

stock_value = [17,1,66,9,15,8,6,3,90]
investor = false
day_bought = ""
day_sold = ""
last_day = stock_value.length 

stock_hash = Hash.new
stock_value.each_with_index{|value, index| stock_hash[value] = index}

if investor == false && (stock_hash.max[1] + 1 != last_day)
  day_bought = stock_hash.max[1] + 1
  investor = true
else
  day_bought = stock_hash.sort[-2][1] + 1
  investor = true
end

puts day_bought

if investor == true
# day_sold = stock_hash.select{|value, index| index > stock_hash.max[1]}.min[1]     original way to do it, i switched because it would break if the highest day was the last day and ran the obove else... not sure y so thats why im leaving it so i can figure out why that broke it later
day_sold = stock_hash.select{|value, index| index > day_bought}.min[1]

investor = false
end

puts "the best day to buy is on day #{day_bought} and the best day to sell is on day #{day_sold}"