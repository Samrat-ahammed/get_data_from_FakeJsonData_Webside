// import 'package:api/Model.dart';
// import 'package:api/http_helper.dart';
// import 'package:get/get.dart';

// class HomeController extends GetxController {
//   Model model = Model();
//   bool getProductSliderInProgress = false;

//   Future<bool> getProductSliderList() async {
//     getProductSliderInProgress = true;
//     update();
//     final result = await NetWorkUtils().fetchAlbum();
//     getProductSliderInProgress = false;
//     if (result != null) {
//       List model = Model.fromJson(result) as List<dynamic>;
//       update();
//       return true;
//     } else {
//       update();
//       return false;
//     }
//   }
// }
