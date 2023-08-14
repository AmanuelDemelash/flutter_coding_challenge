import 'package:flutter/material.dart';
import 'package:flutter_coding_challenge/utils/constants.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Image(
          image: AssetImage("assets/images/logo.png"),
          width: 160,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "OTP",
              style: TextStyle(fontSize: 24),
            ),
            const Text(
              "insert the OTP sent to your phone number",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(
              height: 25,
            ),
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                  enabledBorderColor: Constants.primcolor,
                  focusBorderColor: Constants.primcolor,
                  borderColor: Constants.primcolor),
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Resend",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            // continue buttons
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      )),
    );
  }
}
