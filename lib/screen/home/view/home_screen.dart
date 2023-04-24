import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controoler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Today may 13"),
          actions: [IconButton(onPressed: () {
            Get.toNamed("second");

          }, icon: Icon(Icons.add))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.toNamed('second',arguments: index);
                        },
                        title: Text(
                            "${homeController!.productList[index].work}"),
                        subtitle: Text(
                            "${homeController!.productList[index].name}"),
                      );
                    },
                    itemCount: homeController!.productList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}