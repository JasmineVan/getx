import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController{

  final RxString myText = RxString('');
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();

  void verify() {
    if (textEditingController1.text.isBlank! || textEditingController2.text.isBlank!) {
      Get.snackbar('Error',
          'Username or password is empty!');
    }else{
      Get.snackbar('Success',
          'Welcome!');
    }
  }
   void myTextOnChange(newText){
    myText.value = newText;

  }
}