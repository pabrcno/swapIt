import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/home/home.dart';

import '../../core/widgets/action_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding: const EdgeInsets.all(screenPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo500.png',
                    width: MediaQuery.of(context).size.width - 100,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                    onPressed: () {
                      Get.to(() => const Home());
                    },
                    title: 'Login',
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
