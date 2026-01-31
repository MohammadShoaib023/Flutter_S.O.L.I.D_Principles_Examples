abstract class ICreditCardPayment {
  void payWithCreditCard();
}

abstract class IApplePay {
  void payWithApplePay();
}

abstract class IGooglePay {
  void payWithGooglePay();
}

class AndroidPayment implements IGooglePay {
  @override
  void payWithGooglePay() {
    print('Google Pay payment');
  }
}

class IosPayment implements IApplePay {
  @override
  void payWithApplePay() {
    print('Apple Pay payment');
  }
}

class CreditCardPayment implements ICreditCardPayment {
  @override
  void payWithCreditCard() {
    print('Credit card payment');
  }
}
