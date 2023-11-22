def stock_picker(prices)
    maxProfit = 0
    result = Array.new(2)
    prices.each_with_index do |currentPrice, currentIndex|
        prices.each_with_index do |nextPrice, nextIndex|
            
            currentProfit =  nextPrice - currentPrice
            
            if currentProfit > maxProfit && currentIndex < nextIndex
                maxProfit = currentProfit
                result = [currentIndex, nextIndex]
            end
        end
    end
    puts "maxProfit is #{maxProfit} from #{result}"
    "#{result}"
end


puts stock_picker([17,3,6,9,15,8,6,1,10])