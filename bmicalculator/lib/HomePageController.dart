import 'package:get/get.dart';

class HomePageController extends GetxController {
  final count = 0.obs;
  increment() => count.value++;
  decrecemnt() {
    count.value--;
  }
  
  final hasilBMI = RxDouble(0.0);
  var hasilCAtegoryBMI = RxString("initial");
  calculateBMI(double beratBadan, double tinggiBadan) {
    double calculateBMI = beratBadan / (tinggiBadan * tinggiBadan);
    hasilBMI.value = calculateBMI;
    print("hasil " + hasilBMI.value.toString());
    if (hasilBMI.value < 18.5) {
      hasilCAtegoryBMI.value = "underweight";
    } else if (hasilBMI.value > 18.5 && hasilBMI.value < 24.9) {
      hasilCAtegoryBMI.value = "normal";
    } else if (hasilBMI.value > 25 && hasilBMI.value < 29.9) {
      hasilCAtegoryBMI.value = "overweight";
    } else if (hasilBMI.value > 30) {
      hasilCAtegoryBMI.value = "obesity";
    }
  }
}