import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controller/home_controoler.dart';

class secondScreen extends StatefulWidget {
  const secondScreen({Key? key}) : super(key: key);

  @override
  State<secondScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<secondScreen> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Today May 13"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                      () => ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                              "${homeController!.productList[index].name}"),
                          subtitle: Text(
                              "${homeController!.productList[index].work}"),
                          trailing: IconButton(
                              onPressed: () {
                                homeController!.CartList.removeAt(index);
                              },
                              icon: Icon(Icons.delete,color: Colors.redAccent,)),
                        );
                      },
                      itemCount: homeController!.CartList.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}