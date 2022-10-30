enum Status {
  Uninitialized,
  Authenticated,
  Authenticating,
  Fetching,
  Unauthenticated,
}

enum MenuState { Home, Order, Settings }

enum Categories { Beverages, PackedFood, CookedFood }

enum ModeOfPayment { Wallets, Netbanking, UPI, Card }

enum PaymentState { Success, Pending, Failed, Error }

enum OrderStat {
  Placed,
  Delivered,
  ReadyToBeDelivered,
}
