import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ContactFromWid extends StatefulWidget {
  final Function shofunc;
  const ContactFromWid({
    Key? key,
    required this.shofunc,
  }) : super(key: key);

  @override
  State<ContactFromWid> createState() => _ContactFromWidState();
}

class _ContactFromWidState extends State<ContactFromWid> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _contact = TextEditingController();
  final TextEditingController _subject = TextEditingController();
  final TextEditingController _message = TextEditingController();
  bool _loading = false;

  _sendmail() {
    if (_name.text.isEmpty ||
        _email.text.isEmpty ||
        _contact.text.isEmpty ||
        _subject.text.isEmpty ||
        _message.text.isEmpty) {
      widget.shofunc(
        "All Feilds are Mandetory, Pleas Fill All the Feilds !",
        true,
      );
    } else {
      _loading = true;
      setState(() {});
      HttpConf().sendmailapi(
        _name.text,
        _email.text,
        _contact.text,
        _subject.text,
        _message.text,
        () {
          _loading = false;
          _name.clear();
          _email.clear();
          _contact.clear();
          _subject.clear();
          _message.clear();
          setState(() {});
          widget.shofunc("We will Contact You soon.", false);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CONTACT NOW",
          style: TextStyle(
            fontSize: 15,
            color: prim,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Have Question? Write a Message",
          style: TextStyle(
            fontSize: 30,
            color: high23,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _name,
                style: const TextStyle(
                  fontSize: 18,
                  color: high23,
                ),
                decoration: const InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: low7,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: _email,
                style: const TextStyle(
                  fontSize: 18,
                  color: high23,
                ),
                decoration: const InputDecoration(
                  hintText: "Email-Id",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: low7,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _contact,
                style: const TextStyle(
                  fontSize: 18,
                  color: high23,
                ),
                decoration: const InputDecoration(
                  hintText: "Contact",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: low7,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: _subject,
                style: const TextStyle(
                  fontSize: 17,
                  color: high23,
                ),
                decoration: const InputDecoration(
                  hintText: "Subject",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: low7,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        TextField(
          controller: _message,
          style: const TextStyle(
            fontSize: 18,
            color: high23,
          ),
          decoration: const InputDecoration(
            hintText: "Message",
            hintStyle: TextStyle(
              fontSize: 18,
              color: low7,
            ),
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 30),
        _loading
            ? const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              )
            : Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: InkWell(
                  onTap: () {
                    _sendmail();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: prim,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 16,
                        color: whit,
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
