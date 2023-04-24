import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controller/home_controoler.dart';
import '../../home/model/home_model.dart';


class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _ProductDataState();
}

class _ProductDataState extends State<Data> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Today May 13"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "${homeController!.productList[index].name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${homeController!.productList[index].work}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Model P1 = Model(
                  name: "${homeController!.productList[index].name}",
                  work: "${homeController!.productList[index].work}",
                );
                homeController!.CartList.add(P1);
                Get.back();
              },
              child: Text(
                "add",
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}