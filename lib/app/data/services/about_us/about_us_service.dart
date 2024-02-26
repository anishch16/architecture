// import 'package:dio/dio.dart';
// import 'package:dishhome/app/data/models/about/payment_and_go_respoonse/payment_and_go_respoonse.dart';
//
// import '../../../core/configuration/api.dart';
// import '../../../core/configuration/http_config.dart';
// import '../../models/about/about_us_response/about_us_response.dart';
//
// class AboutUsService {
//   static Future<AboutUsResponse> getAboutUsData() async {
//     try {
//       var option = Options();
//       option.headers = Header.getHeader();
//       var res = await Api().get(
//         '/about',
//         addRequestInterceptor: false,
//         options: option,
//       );
//
//       var response = AboutUsResponse.fromMap(res.data as Map<String, dynamic>);
//       return response;
//     } on BadRequestException {
//       rethrow;
//     } catch (err) {
//       throw Exception(err.toString());
//       // logger.e(err);
//     }
//   }
//
//   static Future<PaymentAndGoRespoonse> getPaymentInfo() async {
//     try {
//       var option = Options();
//       option.headers = Header.getHeader();
//       var res = await Api().get(
//         '/shop/payment/payment-details',
//         addRequestInterceptor: false,
//         options: option,
//       );
//
//       var response =
//           PaymentAndGoRespoonse.fromMap(res.data as Map<String, dynamic>);
//       return response;
//     } on BadRequestException {
//       rethrow;
//     } catch (err) {
//       throw Exception(err.toString());
//       // logger.e(err);
//     }
//   }
// }
