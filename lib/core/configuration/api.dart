// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:dio/io.dart';
//
// // import '../utils/keys.dart';
// import '../../data/models/general/two_message_success_response.dart';
// import 'http_config.dart';
//
// class Api {
//   final dio = createDio();
//   // String _token = "";
//   // String _apiKey = "kMoSRXjK.nc1ebTPO961DFlIuHwrXQoV4oLR1Xq5B";
//
//   Api._internal();
//
//   static final _singleton = Api._internal();
//
//   factory Api() => _singleton;
//
//   static Dio createDio() {
//     var dio = Dio(BaseOptions(
//       baseUrl: HttpConfig.baseUrl,
//       // connectTimeout: const Duration(seconds: 10),
//       // //30 secs
//       // receiveTimeout: const Duration(seconds: 10),
//       // //30 secs
//       // sendTimeout: const Duration(seconds: 10),
//       //20secs
//     ));
//     dio.interceptors.addAll({ErrorInterceptor(dio)});
//     return dio;
//   }
//
//   // String get token => _token;
//
//   // set token(String? value) {
//   //   if (value != null && value.isNotEmpty) {
//   //     _token = value;
//   //   }
//   // }
//
//   // String get apiKey => _apiKey;
//
//   // set apiKey(String? value) {
//   //   if (value != null && value.isNotEmpty) {
//   //     _apiKey = value;
//   //   }
//   // }
//
//   // clearKeyToken() {
//   //   _token = "";
//   //   _apiKey = "";
//   // }
//
//   ///[GET] We will use this method inorder to process get requests
//   Future<Response> get(
//       String path, {
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         void Function(int, int)? onReceiveProgress,
//         bool addRequestInterceptor = true,
//       }) async {
//     // // print("GETTING API FROM : ${this.dio.options.baseUrl + path}");
//     // if (addRequestInterceptor) {
//     //   dio.interceptors
//     //       .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     // }
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//     // // print("QUERY PARAMS=>${queryParameters}");
//     return await dio.get(dio.options.baseUrl + path,
//         onReceiveProgress: onReceiveProgress,
//         cancelToken: cancelToken,
//         options: options,
//         queryParameters: queryParameters);
//   }
//
//   ///[POST] We will use this method inorder to process post requests
//   Future<Response> post(
//       String path, {
//         dynamic data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         void Function(int, int)? onSendProgress,
//         void Function(int, int)? onReceiveProgress,
//         bool addRequestInterceptor = true,
//       }) async {
//     // // print("URL : ${this.dio.options.baseUrl + path}");
//     // // print("Request body : ${data}");
//     // if (addRequestInterceptor) {
//     //   dio.interceptors
//     //       .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     // }
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//
//     return await dio.post(dio.options.baseUrl + path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//         onSendProgress: onSendProgress);
//   }
//
//   ///[PATCH] We will use this method inorder to process post requests
//   Future<Response> patch(
//       String path, {
//         dynamic data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         void Function(int, int)? onSendProgress,
//         void Function(int, int)? onReceiveProgress,
//         bool addRequestInterceptor = true,
//       }) async {
//     // // print("URL : ${this.dio.options.baseUrl + path}");
//     // // print("Request body : ${data}");
//     // if (addRequestInterceptor) {
//     //   dio.interceptors
//     //       .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     // }
//     // options!.headers = {
//     //   'x-api-key': apiKey,
//     // };
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//
//     return await dio.patch(dio.options.baseUrl + path,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onReceiveProgress: onReceiveProgress,
//         onSendProgress: onSendProgress);
//   }
//
//   ///[PUT] We will use this method inorder to process post requests
//   Future<Response> put(
//       String path, {
//         dynamic data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         void Function(int, int)? onSendProgress,
//         void Function(int, int)? onReceiveProgress,
//         bool addRequestInterceptor = true,
//       }) async {
//     // // print("URL : ${this.dio.options.baseUrl + path}");
//     // // print("Request body : ${data}");
//     // if (addRequestInterceptor) {
//     //   dio.interceptors
//     //       .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     // }
//     // options!.headers = {
//     //   'x-api-key': apiKey,
//     // };
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//
//     return await dio.put(
//       dio.options.baseUrl + path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }
//
//   ///[DELETE] We will use this method inorder to process post requests
//   Future<Response> delete(
//       String path, {
//         dynamic data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         void Function(int, int)? onSendProgress,
//         void Function(int, int)? onReceiveProgress,
//         bool addRequestInterceptor = true,
//       }) async {
//     // // print("URL : ${this.dio.options.baseUrl + path}");
//     // // print("Request body : ${data}");
//     // if (addRequestInterceptor) {
//     //   dio.interceptors
//     //       .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     // }
//     // options!.headers = {
//     //   'x-api-key': apiKey,
//     // };
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//
//     return await dio.delete(
//       dio.options.baseUrl + path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//       cancelToken: cancelToken,
//     );
//   }
//
//   ///[Download] We will use this method inorder to process download requests
//   Future<Response> download(
//       String path,
//       String savePath, {
//         dynamic data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         bool addRequestInterceptor = true,
//       }) async {
//     if (addRequestInterceptor) {
//       // dio.interceptors
//       // .add(RequestInterceptor(dio, apiKey: apiKey, token: token));
//     }
//     (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
//     HttpClient()
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//     return await dio.download(dio.options.baseUrl + path, savePath,
//         onReceiveProgress: null,
//         cancelToken: cancelToken,
//         options: options,
//         data: data,
//         queryParameters: queryParameters);
//   }
// }
//
// class ErrorInterceptor extends Interceptor {
//   final Dio dio;
//
//   ErrorInterceptor(this.dio);
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     // print("error is::" + err.toString());
//
//     var response = TwoMessageSuccessResponse.fromMap((err.response?.data ??
//         {'message': "Something went wrong"}) as Map<String, dynamic>);
//
//     switch (err.type) {
//       case DioExceptionType.connectionTimeout:
//         throw ConnectionTimeOutException(err.requestOptions, response);
//       case DioExceptionType.sendTimeout:
//         throw SendTimeOutException(err.requestOptions, response);
//       case DioExceptionType.receiveTimeout:
//         throw ReceiveTimeOutException(err.requestOptions, response);
//
//       case DioExceptionType.cancel:
//         throw CancelException(err.requestOptions, response);
//       case DioExceptionType.unknown:
//       // // print(err.message);
//         throw UnknownException(err.requestOptions, response);
//       case DioExceptionType.badCertificate:
//         throw BadCertificateException(err.requestOptions, response);
//       case DioExceptionType.connectionError:
//         throw NoInternetConnectionException(err.requestOptions, response);
//
//       case DioExceptionType.badResponse:
//         {
//           // // print("STATUS CODE : ${err.response?.statusCode}");
//           // // print("${err.response?.data}");
//           switch (err.response?.statusCode) {
//             case 400:
//               throw BadRequestException(err.requestOptions, response);
//             case 401:
//               {
//                 throw UnauthorizedException(err.requestOptions, response);
//               }
//             case 404:
//               throw NotFoundException(err.requestOptions, response);
//             case 409:
//               throw ConflictException(err.requestOptions, response);
//             case 500:
//               throw InternalServerErrorException(err.requestOptions, response);
//
//             default:
//               throw BadRequestException(err.requestOptions, response);
//           }
//         }
//       default:
//         throw BadRequestException(err.requestOptions, response);
//     }
//   }
// }
//
// class RequestInterceptor extends Interceptor {
//   final Dio dio;
//   final String apiKey;
//   final String token;
//
//   RequestInterceptor(this.dio, {required this.token, required this.apiKey});
//
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     options.headers = {
//       'apiKey': apiKey, /* 'token': token */
//     };
//     return handler.next(options);
//   }
// }
//
// class ConnectionTimeOutException extends DioException {
//   ConnectionTimeOutException(RequestOptions r, this.res)
//       : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Connection Timed out, Please try again';
//   }
// }
//
// class UnknownException extends DioException {
//   UnknownException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Something went wrong, Please try again';
//   }
// }
//
// class CancelException extends DioException {
//   CancelException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Request canceled, Please try again';
//   }
// }
//
// class BadCertificateException extends DioException {
//   BadCertificateException(RequestOptions r, this.res)
//       : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Bad certificate, Please try again';
//   }
// }
//
// class SendTimeOutException extends DioException {
//   SendTimeOutException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Send Timed out, Please try again';
//   }
// }
//
// class ReceiveTimeOutException extends DioException {
//   ReceiveTimeOutException(RequestOptions r, this.res)
//       : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Receive Timed out, Please try again';
//   }
// }
//
// //**********-----STATUS CODE ERROR HANDLERS--------**********
//
// class BadRequestException extends DioException {
//   BadRequestException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Bad request, Please try again';
//   }
// }
//
// class InternalServerErrorException extends DioException {
//   InternalServerErrorException(RequestOptions r, this.res)
//       : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ??
//         'Internal server error occurred, please try again later.';
//   }
// }
//
// class ConflictException extends DioException {
//   ConflictException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Conflict occurred';
//   }
// }
//
// class UnauthorizedException extends DioException {
//   UnauthorizedException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'Access denied';
//   }
// }
//
// class NotFoundException extends DioException {
//   NotFoundException(RequestOptions r, this.res) : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'The requested information could not be found';
//   }
// }
//
// class NoInternetConnectionException extends DioException {
//   NoInternetConnectionException(RequestOptions r, this.res)
//       : super(requestOptions: r);
//
//   final TwoMessageSuccessResponse res;
//
//   @override
//   String toString() {
//     return res.message ?? 'No internet connection detected, please try again.';
//   }
// }
