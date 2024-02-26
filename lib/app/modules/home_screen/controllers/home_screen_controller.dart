import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  //TODO: Implement HomeScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

// import 'package:get/get.dart';
//
// import '../../../core/common_widgets/center_loading_bar.dart';
// import '../../../core/utils/snackbar_util.dart';
// import '../../../data/models/about/about_us_response/about_us_response.dart';
// import '../../../data/models/general/api_result.dart';
// import '../../../data/services/about_us/about_us_service.dart';
//
// class AboutUsController extends GetxController {
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     Get.showOverlay(
//         asyncFunction: aboutUsData, loadingWidget: const CenterLoadingBar());
//     super.onReady();
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//   }
//
//   var aboutUsResult = APIResult<AboutUsResponse>().obs;
//
//   Future<void> aboutUsData() async {
//     try {
//       aboutUsResult.value = APIResult.loading();
//
//       var response = await AboutUsService.getAboutUsData();
//
//       aboutUsResult.value = APIResult.success(response);
//     } catch (e) {
//       aboutUsResult.value = APIResult.error(e.toString());
//     }
//
//     if (aboutUsResult.value.isSuccessful) {
//       ///Get.offNamedUntil(Routes.HOME, ModalRoute.withName(Routes.HOME));
//       ///
//     } else {
//       SSnackbarUtil.showSnackbar(
//           'Error', '${aboutUsResult.value.error}', SnackbarType.error);
//     }
//   }
// }
