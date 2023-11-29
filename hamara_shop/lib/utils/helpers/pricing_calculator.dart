class UPricingCalculator {
  // -- Calculate price based on text on shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double textAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + textAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calcualte shping cost
  static String calculateShippingsCost(double productPrie, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// --- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax ate for the given location rom a text rate database of API.
    // Return the appropriate tax rate.
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    //Lookup the shipping cost for the given location using a shipping rate API
    // calculate the shipping cost based on various factor like distace, weight etc.
    return 5.00; // Example shipping cost of $ 5
  }

  /// -- Sun all cart values and return total amout
  // static double calculateCarTotal(CartModel cart){
  //   return cart.items.map((e) => e.price).fold(0,(previousPrice, currentPrice) => previousPrice ?? 0));
  // }
}
