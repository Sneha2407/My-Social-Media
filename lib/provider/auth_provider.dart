import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_social_media/global/constants/app_constants.dart';
import 'package:my_social_media/models/auth_model.dart';
import 'package:my_social_media/provider/storage_provider.dart';
import 'package:my_social_media/screens/appointments_screen.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../global/constants/methods/methods.dart';
import '../models/api_model.dart';
import '../models/user_checker_model.dart';
import '../screens/company_screen.dart';
import '../screens/loader.dart';
import '../screens/visionboard.dart';

class AuthProvider with ChangeNotifier {
  final SharedPreferences? prefs;
  // FaceBookUser? faceBookUser;
  // final GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: ['email'],
  // );
  // final _facebookAuth = FacebookAuth.instance;
  final FirebaseAuth _authProvider = FirebaseAuth.instance;
  AuthProvider({this.prefs});
  AuthModel authModel = AuthModel();

  // Future registerUser({
  //   required String userType,
  //   required String email,
  //   required String password,
  //   required String firstName,
  //   required String lastName,
  //   required String gender,
  //   required String medium,
  //   required BuildContext context,
  // }) async {
  //   Map<String, dynamic> params = {};
  //   final StorageProvider storageProvider =
  //       Provider.of<StorageProvider>(context, listen: false);
  //   params['user_type'] = userType;
  //   params['email'] = email;
  //   params['password'] = password;
  //   params['first_name'] = firstName;
  //   params['last_name'] = lastName;
  //   params['gender'] = gender;
  //   params['fcm_token'] = storageProvider.fcmToken;
  //   params['medium'] = medium;

  //   //registerURI
  //   var url = AppConstants.baseURL + AppConstants.registerURI;
  //   var response = await ApiModel.post(params, url);
  //   log(" This is register url ===>>> $url \n This is response ===>>> $response ");
  //   log(" ============ The End ============ ");
  //   authModel = AuthModel.fromJson(response);

  //   if (authModel.statuscode == 200) {
  //     Get.snackbar(
  //       'Successful !',
  //       authModel.msg.toString(),
  //       snackPosition: SnackPosition.TOP,
  //       colorText: Colors.white,
  //       backgroundColor: Color.fromARGB(189, 54, 244, 76),
  //     );
  //     Provider.of<ProfileProvider>(context, listen: false)
  //         .viewUserProfileDetails();
  //     final storeProvider =
  //         Provider.of<StorageProvider>(context, listen: false);
  //     storeProvider.changeName(authModel.data?.user?.firstName ?? "");
  //     storeProvider.updateUserEmail(email);
  //     if (authModel.data?.user?.medium! == "google") {
  //       log("user registering with google");
  //       storageProvider.registrationSafetyNet(
  //           route: ChooseLanguage.id, email: email);
  //       goNamedWithBool(context, ChooseLanguage.id, true);
  //     } else if (authModel.data?.user?.medium! == "facebook") {
  //       log("user registering with facebook");
  //       storageProvider.registrationSafetyNet(
  //           route: ChooseLanguage.id, email: email);
  //       goNamedWithBool(context, ChooseLanguage.id, true);
  //     } else {
  //       log("regular user registering");
  //       storageProvider.registrationSafetyNet(
  //           route: GenderEmailNext.id, email: email);
  //       goPageWithName(context, GenderEmailNext.id);
  //     }
  //     saveUserToken("${authModel.data?.token}", email);
  //     print("registered token is ${authModel.data?.token}");
  //     notifyListeners();
  //   } else if (response['statuscode'] == 400) {
  //     // showToast(response['msg'], context);
  //     Get.snackbar(
  //       'Error !',
  //       response[
  //           'msg'], //!=============================================User does'nt exists
  //       snackPosition: SnackPosition.BOTTOM,
  //       colorText: Colors.white,
  //       backgroundColor: Color.fromARGB(190, 244, 67, 54),
  //     );
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(authModel.msg.toString())));
  //     print(response['msg']);
  //     print(response['statuscode']);
  //     notifyListeners();
  //   }
  //   notifyListeners();
  // }

  // Future checkRegisterUser({
  //   String? name,
  //   required String email,
  //   required String medium,
  //   required BuildContext context,
  // }) async {
  //   Map<String, dynamic> params = {};
  //   params['email'] = email;
  //   var loginApiURL = AppConstants.baseURL + AppConstants.emailCheck;
  //   var response = await ApiModel.post(params, loginApiURL);

  //   var uerCheckModel = UserCheckModel.fromJson(response);
  //   if (uerCheckModel.statuscode == 200) {
  //     log(uerCheckModel.msg.toString());
  //     log(uerCheckModel.data?.user?.medium?.toString() ?? '');
  //     if (uerCheckModel.data?.user?.medium != null &&
  //         uerCheckModel.data?.user?.medium == "google") {
  //       log("google");

  //                 // await GoogleSignDialog(context);

  //     } else if (uerCheckModel.data?.user?.medium != null &&
  //         uerCheckModel.data?.user?.medium == "facebook") {
  //       log("facebook");
  //       //showToast("Please Try Facebook Sign In", context);
  //         //  await commonFacebookSigninDialog(context);

  //     } else if (uerCheckModel.data?.user?.medium != null &&
  //         uerCheckModel.data?.user?.medium == "apple") {
  //       log("apple");
  //       //showToast("Please Try Apple Sign In", context);
  //         Get.snackbar(
  //                     'Error !',
  //                     'Please try to Sign In with your AppleId',
  //                     snackPosition: SnackPosition.TOP,
  //                     colorText:Colors.white,
  //                      backgroundColor: Color.fromARGB(190, 244, 67, 54),
  //                 );

  //     } else if (uerCheckModel.data?.user?.medium != null &&
  //         uerCheckModel.data?.user?.medium == "null") {
  //       log("regular");
  //      // showToast("Please Try Regular Sign In", context);
  //        Get.snackbar(
  //                     'Error !',
  //                     'Please try to Sign In with your Email',
  //                     snackPosition: SnackPosition.TOP,
  //                     colorText:Colors.white,
  //                      backgroundColor: Color.fromARGB(190, 244, 67, 54),
  //                 );
  //     } else {
  //       log("Unrecognized Medium With an existing User!");
  //       goPageWithName(context, SigninScreen.id);
  //        Get.snackbar(
  //                     'Error !',
  //                     'Please try to Sign In with your Email',
  //                     snackPosition: SnackPosition.TOP,
  //                     colorText:Colors.white,
  //                      backgroundColor: Color.fromARGB(190, 244, 67, 54),
  //                 );
  //     }
  //   } else {
  //     log("register google user!");

  //     registerUser(
  //       userType: '2',
  //       email: email,
  //       password: '12345678',
  //       firstName: name ?? "",
  //       lastName: '',
  //       gender: '',
  //       medium: medium,
  //       context: context,
  //     );
  //   }
  // }

  // ========================== |> Login with email and password <| ========================== //
  Future loginUser({
    required String email,
    required String password,
    required String userType,
    required BuildContext context,
  }) async {
    Loader.show(context);
    Map<String, dynamic> params = {};

    params['email'] = email;
    params['password'] = password;
    var loginApiURL = AppConstants.baseURL + AppConstants.loginURI;
    var response = await ApiModel.post(params, loginApiURL);
    log("here are the fields $params");
    print("login full url ===>>> $loginApiURL");
    print("login API response ===>>> $response");
    authModel = AuthModel.fromJson(response);

    if (authModel.statuscode == 200) {
      Loader.hide();
      // showToast(authModel.msg.toString(), context);
      print("login token is ${authModel.data?.token}");
      saveUserToken("${authModel.data?.token}", email);
      //Navigate to
      print(authModel.data?.user?.userType);
      var responseUserType = authModel.data?.user?.userType;
      print("API user type ===>>> $responseUserType");
      print("carried user type ===>>> $userType");
      if (Provider.of<StorageProvider>(context, listen: false)
          .checkSafetyNet(context: context, email: email)) {
        notifyListeners();
        return;
      }
      if (responseUserType == "2") {
        print("VisionBoard 1");
        goPageWithName(context, VisionBoard.id);
        // showToast(response['msg'].toString(), context);
        Get.snackbar(
          'Successful !',
          response['msg'].toString(),
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Color.fromARGB(189, 54, 244, 76),
        );
      } else if (responseUserType == "3") {
        print("CoachScreen 2");
        goPageWithName(context, AppointmentsScreen.id);
      } else if (responseUserType == "4") {
        print("CompanyScreen 3");
        goPageWithName(context, CompanyScreen.id);
      } else {
        print("not match anything");
      }
      notifyListeners();
    } else {
      Loader.hide();
      // showToast(response['msg'].toString(), context);
      successSnackBar(context, response['msg']);
      notifyListeners();
    }
    notifyListeners();
  }

  //* ============== |> Login with OTP <|============== */
  Future sendLoginOtp({
    required String email,
    required BuildContext context,
  }) async {
    Map<String, dynamic> params = {};
    params['email'] = email;

    print(" ====== $params ====== \n  ====== End ====== ");

    var url = AppConstants.baseURL + AppConstants.sendOTPURI;
    var response = await ApiModel.post(params, url);

    print("otp details URL ===>>> $url");
    print("getting otp API response ===>>> $response");
    //
    if (response['statuscode'] == 200) {
      authModel = AuthModel.fromJson(response);
      log('${authModel.data?.user?.otp}');
      // showToast(response['msg'], context);
      successSnackBar(context, response['msg']);
      notifyListeners();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('This email is not register with us')));
      notifyListeners();
    }
  }

  //* ============== |> Login with OTP <|============== */
  Future loginWithOtp({
    required String email,
    required String otp,
    required String userType,
    required BuildContext context,
  }) async {
    Map<String, dynamic> params = {};

    params['email'] = email;
    params['otp'] = otp;

    var loginApiURL = AppConstants.baseURL + AppConstants.otpLoginURI;
    final storeProvider = Provider.of<StorageProvider>(context, listen: false);
    var response = await ApiModel.post(params, loginApiURL);
    print("login full url ===>>> $loginApiURL");
    print("login API response ===>>> $response");
    authModel = AuthModel.fromJson(response);

    if (authModel.statuscode == 200) {
      print("login token is ${authModel.data?.token}");
      saveUserToken("${authModel.data?.token}", email);
      storeProvider.updateUserEmail(email);
      //Navigate to
      print(authModel.data?.user?.userType);
      var responseUserType = authModel.data?.user?.userType;
      print("API user type ===>>> $responseUserType");
      print("carried user type ===>>> $userType");
      if (storeProvider.checkSafetyNet(context: context, email: email)) {
        notifyListeners();
        return;
      }
      if (responseUserType == "2") {
        print("VisionBoard 1");
        goPageWithName(context, VisionBoard.id);
      } else if (responseUserType == "3") {
        print("CoachScreen 2");
        goPageWithName(context, AppointmentsScreen.id);
      } else if (responseUserType == "4") {
        print("CompanyScreen 3");
        goPageWithName(context, CompanyScreen.id);
      } else {
        print("not match anything");
      }
      notifyListeners();
    } else {
      // showToast(response['msg'].toString(), context);
      successSnackBar(context, response['msg']);
      notifyListeners();
    }
    notifyListeners();
  }

  Future<void> saveUserToken(String token, String email) async {
    try {
      await prefs?.setString(AppConstants.token, token);
      await prefs?.setString(AppConstants.userEmail, email);
      ApiModel.updateHeader(newToken: token);
    } catch (e) {
      rethrow;
    }
    print("saved token ===>> $token");
  }
}
