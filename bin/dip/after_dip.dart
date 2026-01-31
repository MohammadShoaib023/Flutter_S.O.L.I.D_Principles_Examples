abstract class IMessage {
  void sendEmail(String title, String content);
}

class Email {
  final IMessage messageService;
  Email(this.messageService);

  void sendEmail(String title, String content) =>
      messageService.sendEmail(title, content);
}

class GmailService implements IMessage {
  @override
  void sendEmail(String title, String content) {
    print('Gmail: $title - $content');
  }
}

class OutlookService implements IMessage {
  @override
  void sendEmail(String title, String content) {
    print('Outlook: $title - $content');
  }
}

void main() {
  // final emailService = Email(OutlookService());
  final emailService = Email(GmailService());
  emailService.sendEmail('title', 'hello');
}
