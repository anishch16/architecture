import 'package:get_storage/get_storage.dart';

import '../utils/keys.dart';

class HttpConfig {
  static const mediaUrl = "http://demo1.dishhome.com.np:81/v1/file/";
  static const baseUrl = "http://demo1.dishhome.com.np:81/v1";
  static const apiKey = 'Api key here if any .';

  //End points by modules

  //AUTH
  //something like this
  static const login = '/auth/login';
  static const String registerUser = "/auth/register";

  static const String loginWithMobileOtp = "/auth/login-with-otp";

  static const String verifyOtp = "/auth/verify-otp";

  static const String resendOtp = "/auth/resend-otp";

  static const String forgetPassword = "/auth/forgot-password";

  static const String verifyDForgetPassword =
      "/auth/forgot-password-verify-otp";

  static const String changePassword = "/auth/change-password";
  // wifi settings
  static const String changeWifiSetting = '/fibernet/wifi-credential-service';

  //User
  static const String userBalance = '/users/user-balance';

  static const newPackageOption = '/package/new-package-options';
  static const changePackageOption = '/package/change-package';

  static String locationJson =
      '{ "provinces": [ { "id": 1, "name": "Province 1" }, { "id": 2, "name": "Madhesh Province" }, { "id": 3, "name": "Bagmati Province" }, { "id": 4, "name": "Gandaki Province" }, { "id": 5, "name": "Lumbini Province" }, { "id": 6, "name": "Karnali Province" }, { "id": 7, "name": "Sudurpaschim Province" } ], "districts": [ { "id": 1, "province": "Province 1", "name": "Bhojpur" }, { "id": 2, "province": "Province 1", "name": "Dhankuta" }, { "id": 3, "province": "Province 1", "name": "Ilam" }, { "id": 4, "province": "Province 1", "name": "Jhapa" }, { "id": 5, "province": "Province 1", "name": "Khotang" }, { "id": 6, "province": "Province 1", "name": "Morang" }, { "id": 7, "province": "Province 1", "name": "Okhaldhunga" }, { "id": 8, "province": "Province 1", "name": "Panchthar" }, { "id": 9, "province": "Province 1", "name": "Sankhuwasabha" }, { "id": 10, "province": "Province 1", "name": "Solukhumbu" }, { "id": 11, "province": "Province 1", "name": "Sunsari" }, { "id": 12, "province": "Province 1", "name": "Taplejung" }, { "id": 13, "province": "Province 1", "name": "Terhathum" }, { "id": 14, "province": "Province 1", "name": "Udayapur" }, { "id": 15, "province": "Madhesh Province", "name": "Saptari" }, { "id": 16, "province": "Madhesh Province", "name": "Siraha" }, { "id": 17, "province": "Madhesh Province", "name": "Dhanusa" }, { "id": 18, "province": "Madhesh Province", "name": "Mahottari" }, { "id": 19, "province": "Madhesh Province", "name": "Sarlahi" }, { "id": 20, "province": "Madhesh Province", "name": "Bara" }, { "id": 21, "province": "Madhesh Province", "name": "Parsa" }, { "id": 22, "province": "Madhesh Province", "name": "Rautahat" }, { "id": 23, "province": "Bagmati Province", "name": "Sindhuli" }, { "id": 24, "province": "Bagmati Province", "name": "Ramechhap" }, { "id": 25, "province": "Bagmati Province", "name": "Dolakha" }, { "id": 26, "province": "Bagmati Province", "name": "Bhaktapur" }, { "id": 27, "province": "Bagmati Province", "name": "Dhading" }, { "id": 28, "province": "Bagmati Province", "name": "Kathmandu" }, { "id": 29, "province": "Bagmati Province", "name": "Kavrepalanchok" }, { "id": 30, "province": "Bagmati Province", "name": "Lalitpur" }, { "id": 31, "province": "Bagmati Province", "name": "Nuwakot" }, { "id": 32, "province": "Bagmati Province", "name": "Rasuwa" }, { "id": 33, "province": "Bagmati Province", "name": "Sindhupalchok" }, { "id": 34, "province": "Bagmati Province", "name": "Chitwan" }, { "id": 35, "province": "Bagmati Province", "name": "Makwanpur" }, { "id": 36, "province": "Gandaki Province", "name": "Baglung" }, { "id": 37, "province": "Gandaki Province", "name": "Gorkha" }, { "id": 38, "province": "Gandaki Province", "name": "Kaski" }, { "id": 39, "province": "Gandaki Province", "name": "Lamjung" }, { "id": 40, "province": "Gandaki Province", "name": "Manang" }, { "id": 41, "province": "Gandaki Province", "name": "Mustang" }, { "id": 42, "province": "Gandaki Province", "name": "Myagdi" }, { "id": 43, "province": "Gandaki Province", "name": "Nawalpur" }, { "id": 44, "province": "Gandaki Province", "name": "Parbat" }, { "id": 45, "province": "Gandaki Province", "name": "Syangja" }, { "id": 46, "province": "Gandaki Province", "name": "Tanahun" }, { "id": 47, "province": "Lumbini Province", "name": "Kapilvastu" }, { "id": 48, "province": "Lumbini Province", "name": "Parasi" }, { "id": 49, "province": "Lumbini Province", "name": "Rupandehi" }, { "id": 50, "province": "Lumbini Province", "name": "Arghakhanchi" }, { "id": 51, "province": "Lumbini Province", "name": "Gulmi" }, { "id": 52, "province": "Lumbini Province", "name": "Palpa" }, { "id": 53, "province": "Lumbini Province", "name": "Dang" }, { "id": 54, "province": "Lumbini Province", "name": "Pyuthan" }, { "id": 55, "province": "Lumbini Province", "name": "Rolpa" }, { "id": 56, "province": "Lumbini Province", "name": "Eastern Rukum " }, { "id": 57, "province": "Lumbini Province", "name": "Banke" }, { "id": 58, "province": "Lumbini Province", "name": "Bardiya" }, { "id": 59, "province": "Karnali Province", "name": "Western Rukum" }, { "id": 60, "province": "Karnali Province", "name": "Salyan" }, { "id": 61, "province": "Karnali Province", "name": "Dolpa" }, { "id": 62, "province": "Karnali Province", "name": "Humla" }, { "id": 63, "province": "Karnali Province", "name": "Jumla" }, { "id": 64, "province": "Karnali Province", "name": "Kalikot" }, { "id": 65, "province": "Karnali Province", "name": "Mugu" }, { "id": 66, "province": "Karnali Province", "name": "Surkhet" }, { "id": 67, "province": "Karnali Province", "name": "Dailekh" }, { "id": 68, "province": "Karnali Province", "name": "Jajarkot" }, { "id": 69, "province": "Sudurpaschim Province", "name": "Kailali" }, { "id": 70, "province": "Sudurpaschim Province", "name": "Achham" }, { "id": 71, "province": "Sudurpaschim Province", "name": "Doti" }, { "id": 72, "province": "Sudurpaschim Province", "name": "Bajhang" }, { "id": 73, "province": "Sudurpaschim Province", "name": "Bajura" }, { "id": 74, "province": "Sudurpaschim Province", "name": "Kanchanpur" }, { "id": 75, "province": "Sudurpaschim Province", "name": "Dadeldhura" }, { "id": 76, "province": "Sudurpaschim Province", "name": "Baitadi" }, { "id": 77, "province": "Sudurpaschim Province", "name": "Darchula" } ] }';

//Tv & Internet

//Banner

//Internet settings

//Billing history
}

class Header {
  static Map<String, String> getHeader({bool fcmToken = false}) {
    Map<String, String> headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    return headers;
  }
}

class AuthHeader {
  static Map<String, String> getHeader() {
    GetStorage box = GetStorage();
    var accessToken = box.read(ConstKeys.accessToken);
    Map<String, String> headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    return headers;
  }
}
