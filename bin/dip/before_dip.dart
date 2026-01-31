class Email {
  final GmailService _gmailService = GmailService();
  final OutlookService _outlookService = OutlookService();

  void sendEmailByGmail() => _gmailService.sendEmail('Say Hello', 'Hello');

  void sendEmailByOutlook() => _outlookService.sendEmail('Say Hello', 'Hello');
}

class GmailService {
  void sendEmail(String title, String content) {
    print('Gmail: $title - $content');
  }
}

class OutlookService {
  void sendEmail(String title, String content) {
    print('Outlook: $title - $content');
  }
}

void main() {
  final email = Email();
  email.sendEmailByGmail();
  email.sendEmailByOutlook();
}
