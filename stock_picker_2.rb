=begin
    -Not my solution, found this on someone's else solution for this project, found this very nice and short as this is
    -just a one liner, would like to use these kind of solutions for myself
    -saving it as a refrence for future
=end

input = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    results = prices.each_with_index.to_a.combination(2).max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
end

puts stock_picker(input)
