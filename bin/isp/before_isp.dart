abstract class IPayment {
  void payWithApplePay();
  void payWithGooglePay();
  void payWithCreditCard();
}

class AndroidPayment implements IPayment {
  @override
  void payWithApplePay() {
    throw UnsupportedError('Apple Pay is not supported on Android.');
  }

  @override
  void payWithGooglePay() {
    print('Google Pay payment');
  }

  @override
  void payWithCreditCard() {
    print('Credit card payment');
  }
}

class IosPayment implements IPayment {
  @override
  void payWithApplePay() {
    print('Apple Pay payment');
  }

  @override
  void payWithGooglePay() {
    throw UnsupportedError('Google Pay is not supported on iOS.');
  }

  @override
  void payWithCreditCard() {
    print('Credit card payment');
  }
}

class CreditCardPayment implements IPayment {
  @override
  void payWithApplePay() {
    throw UnsupportedError('Apple Pay is not supported for card-only.');
  }

  @override
  void payWithGooglePay() {
    throw UnsupportedError('Google Pay is not supported for card-only.');
  }

  @override
  void payWithCreditCard() {
    print('Credit card payment');
  }
}
