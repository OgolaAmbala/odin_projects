# Define a method named stock_picker that takes an array of stock prices as input.
def stock_picker(prices)
  # Check if the length of the prices array is less than 2.
  if prices.length < 2
    # If there are not enough days, print a message and return nil.
    puts "Not enough days to make a profit."
    return nil
  end

  # Initialize variables to store the best buy and sell days, and the maximum profit.
  buy_day = 0
  sell_day = 1
  max_profit = prices[sell_day] - prices[buy_day]

  # Nested loop to iterate over all possible pairs of buy and sell days.
  for i in 0..prices.length - 2
    for j in i + 1..prices.length - 1
      # Check if the profit for the current pair is greater than the current maximum profit.
      if prices[j] - prices[i] > max_profit
        # If yes, update the buy_day, sell_day, and max_profit.
        buy_day = i
        sell_day = j
        max_profit = prices[sell_day] - prices[buy_day]
      end
    end
  end

  # Return an array containing the best buy and sell days.
  [buy_day, sell_day]
end

# Example usage:
# Define an array of stock prices for each hypothetical day.
stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

# Call the stock_picker method with the stock_prices array.
result = stock_picker(stock_prices)

# Print the result, indicating the best buy and sell days and the maximum profit.
puts "Buy on day #{result[0]} and sell on day #{result[1]} for the maximum profit of #{stock_prices[result[1]] - stock_prices[result[0]]}."

