class Email {
  final GmailService _gmailService = GmailService();
  final OutLookService _outlookService = OutLookService();

  void sendEmailByGmail() => _gmailService.sendEmail('Say Hello', 'Hello');

  void sendEmailByOutlook() => _outlookService.sendEmail('Say Hello', 'Hello');
}

class GmailService {
  void sendEmail(String title, String content) {
    // implementation
  }
}

class OutLookService {
  void sendEmail(String title, String content) {
    // implementation
  }
}

void main() {
  final email = Email();
  email.sendEmailByGmail();
  email.sendEmailByOutlook();
}
