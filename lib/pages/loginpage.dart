// ignore_for_file: avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigator.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _useridController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                FadeInDown(
                  duration: const Duration(milliseconds: 1000),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 200,
                    ),
                  ),
                ),
                FadeInDown(
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    "Welcome user",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
                FadeInDown(
                  duration: const Duration(milliseconds: 1000),
                  child: TextFormField(
                    controller: _useridController,
                    decoration: const InputDecoration(
                      labelText: 'User ID',
                      hintText: 'Enter your User ID',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your user id';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                FadeInDown(
                  duration: const Duration(milliseconds: 1000),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1000),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Forget Password?")),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity, // Sets the width to full screen width
                  height: 60,
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 1000),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainNavigation()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
