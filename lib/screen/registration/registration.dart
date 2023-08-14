import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class Registration extends StatelessWidget {
  Registration({super.key});
  final _formkey = GlobalKey<FormState>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "REGISTER",
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "First Name",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                        controller: _firstName,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: "first name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        "Last Name",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                        controller: _lastName,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: "last name"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        "Email",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == "") {
                            return "email is empity";
                          } else if (!RegExp(
                                  "^[a-zA-Z0-9+_.-]+@[a-zA-Z.-]+.[a-z]")
                              .hasMatch(value!)) {
                            return "Please enter valid Email";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.7))),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(0.7))),
                            hintText: "abebe@gmail.com"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Enter Password",
                        style: TextStyle(color: Colors.black54),
                      ),
                      TextFormField(
                        controller: _password,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: "*******"),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // login button
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "REGISTER",
                                style: TextStyle(color: Colors.white),
                              ))),

                      const SizedBox(
                        height: 15,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(children: [
                              TextSpan(
                                  text: 'Already have an account?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45)),
                              TextSpan(
                                  text: ' LOGIN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black)),
                            ])),
                      )
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
