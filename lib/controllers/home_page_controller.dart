import 'package:get/get.dart';
import 'package:getx/models/coffee_model.dart';

class HomePageController extends GetxController{

  final RxInt counter = RxInt(0);

  final coffeeListData = DummyCoffeeData().coffeeList;

  final RxList<CoffeeModel> coffeeList = RxList();

  void coffeeListInit(){
    coffeeList.value = coffeeListData;
  }

  void increase(){
    counter.value += 1;
    coffeeList.add(CoffeeModel(coffeeName: 'Abrarica ${counter.value}', origin: 'Vietname'));
  }

  void decrease(){
    counter.value -= 1;
    coffeeList.removeAt(counter.value);
  }

}