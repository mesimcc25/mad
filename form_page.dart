import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'display_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact Form",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Name
              Text("Name"),
              TextFormField(
                controller: name,
                validator: (v) => v!.isEmpty ? "Enter name" : null,
              ),

              const SizedBox(height: 10),

              // Email
              Text("Email"),
              TextFormField(
                controller: email,
                validator: (v) => v!.contains("@") ? null : "Enter valid email",
              ),

              const SizedBox(height: 10),

              // Message
              Text("Message"),
              TextFormField(
                controller: message,
                validator: (v) => v!.isEmpty ? "Enter message" : null,
              ),

              const SizedBox(height: 20),

              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DisplayPage(
                          name: name.text,
                          email: email.text,
                          message: message.text,
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff667eea), Color(0xff764ba2)],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
