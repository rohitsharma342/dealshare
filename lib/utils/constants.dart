class AppConstants {
  static const String appName = 'DealShare';
  static const String appTagline = 'Fresh Groceries Delivered';
  static const String madeWith = 'Made With BrainBox';

  static const Duration splashDuration = Duration(seconds: 3);
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration snackBarDuration = Duration(seconds: 2);

  static const double freeDeliveryThreshold = 50.0;
  static const double deliveryFee = 4.99;

  static const int maxCartQuantity = 99;
  static const int maxProductNameLength = 100;
  static const int maxSearchQueryLength = 50;

  static const String currencySymbol = '\$';
  static const String defaultCountryCode = '+1';

  static const List<String> supportedPaymentMethods = [
    'Credit Card',
    'Debit Card',
    'PayPal',
    'Apple Pay',
    'Google Pay',
  ];

  static const Map<String, String> orderStatusMessages = {
    'pending': 'Your order is being reviewed',
    'confirmed': 'Your order has been confirmed',
    'processing': 'Your order is being prepared',
    'outForDelivery': 'Your order is on its way',
    'delivered': 'Your order has been delivered',
    'cancelled': 'Your order has been cancelled',
  };
}