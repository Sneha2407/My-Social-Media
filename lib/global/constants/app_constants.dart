import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static bool isVisible = false;
  static bool hideButton = true;
  //static bool fieldEnable = true;
  RegExp emailRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static final paddingTopZero = EdgeInsets.fromLTRB(15.w, 0, 15.w, 10.h);
  static final paddingBottomZero = EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 10.h);

  //
  static const String theme = 'theme';
  static const String token = "token";
  //* ============== Remember me ============== */
  static const String userEmail = "user_email";
  static const String userPassword = "user_password";
  //* ============== Remember me ============== */

  //static String token = AuthProvider.token;
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  static GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  //
  static String loginURI = "/api/user/login";
  static String baseURL = "http://cfpc.previewforclient.com";
  static String sendOTPURI = "/api/user/send/otp";
  static String otpLoginURI = "/api/user/login/otp";
  static String resetForgotPassword = "/api/user/reset/forgot/password";
  static String registerURI = "/api/user/register";
  static String userProfileDetailsURI = "/api/user/details";
  static String updateUserProfileURI = "/api/user/update/profile/details";
  static String userUpdatePhotoURI = "/api/user/add/photo";
  static String changePasswordURI = "/api/user/update/password";
  static String contactUsURI = "/api/user/contact/message/store";
  static String emailCheck = "/api/check/email";
  static String deleteProfile = "/api/user/delete";
  static String feedBackURI = "/api/user/feedback";

  static String scalRatingURI = "/api/question-responses/scale-rating";
  static String pictureResponseURI = "/api/question-responses/picture-response";
  static String quizResponseURI = "/api/question-responses/quiz-response";
  static String oneWordBestCaptureURI = "/api/question-responses/word-response";
  static String wordLoveLifeURI =
      "/api/question-responses/word-love-life-response";
  static String viewPictureResURI =
      "/api/question-responses/picture-feeling-response";
  static String achieveIdealLifeURI =
      "/api/question-responses/achieve-ideal-life-response";
  static String wheelResponseURI = "/api/question-responses/wheel-response";

  //HappyLifeSurvey
  static String goalCategoriesURI = "/api/goal-planning/categories";
  static String happyLifeSurvey = "/api/happy-life-survey/happy-life-survey";
}
