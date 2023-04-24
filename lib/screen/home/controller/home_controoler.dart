
import 'package:get/get.dart';

import '../model/home_model.dart';
class HomeController extends GetxController
{
  List<Model>productList=<Model>[
    Model( name: "gshdgd",work: "planning"),
    Model( name: "gshdgd",work: "planning"),
    Model( name: "gshdgd",work: "planning"),
    Model( name: "gshdgd",work: "planning",),
    Model( name: "gshdgd",work: "planning",),

  ].obs;
  RxList<Model> CartList = <Model>[].obs;
}