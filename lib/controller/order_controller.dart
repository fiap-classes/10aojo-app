import 'package:abc_tech_app/model/assist.dart';
import 'package:abc_tech_app/service/geolocation_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:developer';

class OrderController extends GetxController {
  final GeolocaionService _geolocaionService;
  final formKey = GlobalKey<FormState>();
  final operatorIdController = TextEditingController();
  final selectedAssists = <Assist>[].obs;

  OrderController(this._geolocaionService);

  @override
  void onInit() {
    super.onInit();
    _geolocaionService.start();
  }

  getLocation() {
    _geolocaionService
        .getPosition()
        .then((value) => log(value.toJson().toString()));
  }

  finishStartOrder() {
    log("Teste");
  }

  selectAssists() {
    Get.toNamed("/assists", arguments: selectedAssists);
  }
}
