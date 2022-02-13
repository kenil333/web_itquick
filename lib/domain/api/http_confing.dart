import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpConf {
  final http.Client _client = http.Client();
  final String _basurl = "https://api.emailjs.com/api/v1.0/email/send";

  void sendmailapi(
    String name,
    String email,
    String contact,
    String subject,
    String message,
    Function done,
  ) async {
    await _client
        .post(
      Uri.parse(_basurl),
      headers: {
        "origin": "http://localhost",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "service_id": "service_6b7exgi",
        "template_id": "template_c6kdbjc",
        "user_id": "user_B6e0DrulE7apzsaotYD3l",
        "template_params": {
          "full_name": name,
          "email_id": email,
          "contact_number": contact,
          "usubject": subject,
          "umessage": message,
        },
      }),
    )
        .then((_) {
      done();
    });
  }
}
