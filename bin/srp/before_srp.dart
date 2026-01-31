// Before SRP
class TransferMoney {
  void transferLocal(double amount) {
    // Does transfer, notification, and persistence: multiple responsibilities.
    _sendSmsMessage();
    _saveTransaction();
  }

  void _sendSmsMessage() {
    // implementation
  }

  void _saveTransaction() {
    // implementation
  }
}
