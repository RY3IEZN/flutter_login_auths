import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CO",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            ),
            Text(
              "DE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            ),
            Text(
              "Verification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter the verification code that was sent to",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            OtpTextField(
              numberOfFields: 6,
              filled: true,
              fillColor: Colors.grey.withOpacity(0.3),
              showFieldAsBox: true,
              keyboardType: TextInputType.number,
              onSubmit: (value) {
                print("the otp code is ${value}");
              },
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Next")))
          ],
        ),
      ),
    );
  }
}
