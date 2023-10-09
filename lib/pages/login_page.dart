import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/commons/common.dart';

import '../controllers/login_page_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final controller = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {

    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/coffee1.jpg'),
            fit: BoxFit.cover,
            opacity: 0.8,
          )
        ),
        child: Center(
          child: Container(
            width: maxWidth * 0.8,
            height: maxHeight * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldCommon(textFieldLabelText: 'Username',
                    textInputType: TextInputType.text,
                    textEditingController: controller.textEditingController1,
                  prefixIcon: const Icon(Icons.person),
                  maxLengthInput: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 24),
                  child: TextFieldCommon(textFieldLabelText: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    textEditingController: controller.textEditingController2,
                    prefixIcon: const Icon(Icons.lock),
                    maxLengthInput: 16,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  width: maxWidth * 0.4,
                  height: maxHeight * 0.075,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC67C4E),
                      ),
                      onPressed: () => controller.verify(),
                      child: const Text('Login', style: TextStyle(
                        color: Colors.white,
                      ),)
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
