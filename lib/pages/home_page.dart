import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Get.put(HomePageController());

  @override
  void initState() {
    controller.coffeeListInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed:  () => controller.decrease(), icon: const Icon(Icons.remove)
              ),
               Obx(()=> Text(controller.counter.value.toString(), style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),),
               ),
              IconButton(onPressed: () => controller.increase(), icon: const Icon(Icons.add)
              ),
            ],
          ),
          Expanded(
            child: Obx(()=> ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: controller.coffeeList.length,
                itemBuilder: (context, index) => Text(controller.coffeeList[index].coffeeName),),
          )
          )
        ],
      ),
    );
  }
}
