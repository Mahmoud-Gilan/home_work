int maxProfit(List<int> prices) {
  if (prices.isEmpty) return 0;

  int minPrice = prices[0];
  int best = 0;

  for (int i = 1; i < prices.length; i++) {
    int price = prices[i];

    // calculate the profit
    int profit = price - minPrice;
    if (profit > best) best = profit;

    if (price < minPrice) minPrice = price; // update minPrice
  }
  return best;
}

void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4])); // 5
  print(maxProfit([7, 6, 4, 3, 1])); // 0
}
