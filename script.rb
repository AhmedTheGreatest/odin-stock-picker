def stock_picker(prices)
  max_difference = 0
  result = []

  prices.each_with_index do |price, i|
    prices[i..].each_with_index do |compare_price, j|
      if compare_price - price > max_difference
        max_difference = compare_price - price
        result = [i, j + 1]
      end
    end
  end
  return result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
