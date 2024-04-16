# frozen_string_literal: true

def stock_picker(prices)
  # Initialize highest and lowest prices to the first price in the list
  highest_price = prices[(prices.length - 1)]
  lowest_price = prices[0]

  # Iterate through the prices to find the highest and lowest prices
  prices.each_with_index do |price, day|
    next if day.zero?

    highest_price = price if price > highest_price && day > 2
    lowest_price = price if price < lowest_price
  end

  # Output the highest and lowest prices found
  puts "Highest Price: #{highest_price}"
  puts "Lowest Price: #{lowest_price}"
  puts "Maximum Profit: = #{highest_price - lowest_price}"
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker(stock_prices)
