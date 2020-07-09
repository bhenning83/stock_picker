# create a method called stock_picker that accepts an array as an argument
# create a new array called pairs
# Loop over each number in the array and make a new, separate array for it and each number with a higher index than it
# store the new array of pairs in the pairs array
# loop over every pair in the the pairs array, subtracting the two numbers and store the difference as a third item in the array
# find the largest difference in the pairs array 
# print the index of the low number of the pair as the buy day
# print teh index of the high number of the pair as the sell day
require "pry" 

stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
    pairs = []
      stock_prices.each do |number|
          for i in stock_prices.index(number) + 1..stock_prices.length - 1
            pair = [number, stock_prices[i]]
              pairs.push(pair)
          end
      end
      find_payouts(pairs)
      pairs_sorted = pairs.sort.reverse
        best_return = pairs_sorted[0]
        buy_amount = best_return[1]
        sell_amount = best_return[2]
        puts "For the best return, buy on day #{stock_prices.index(buy_amount)} and sell on day #{stock_prices.index(sell_amount)} for a return of $#{best_return[0]}"
  end
  
def find_payouts(array)
    array.each do |pair|
        pair.unshift(pair[1] - pair[0])
    end
end






stock_picker(stock_prices)