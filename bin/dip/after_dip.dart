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
    print('Send By Gmail');
  }
}

class OutLook implements IMessage {
  @override
  void sendEmail(String title, String content) {
    print('Send By Outlook');
  }
}

void main() {
  // final emailService = Email(OutLookService());
  final emailService = Email(GmailService());
  emailService.sendEmail('title', 'hello');
}
