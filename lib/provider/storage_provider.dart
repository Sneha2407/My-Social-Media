import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
import 'package:image_picker/image_picker.dart';
import '../global/constants/methods/methods.dart';

// import 'package:olga/screens/visionboard/drawer/payment/add_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io' as io;

class StorageProvider with ChangeNotifier {
  SharedPreferences prefs;
  StorageProvider(this.prefs);
//!===================Text To speach =========================
  bool _isAudio = true;
  bool get isAudio => _isAudio;
  void changeAudio(isAudio) {
    _isAudio = isAudio;
    notifyListeners();
  }

  // void audioSpeak(String audio) async{
  //   final FlutterTts flutterTts = FlutterTts();
  //     if (io.Platform.isIOS) {
  //     await flutterTts.stop();
  //   }
  //   speak(String text1) async {
  //     await flutterTts.setLanguage("en-US");
  //     await flutterTts.setPitch(1.0);
  //     await flutterTts.speak(text1);
  //   }

  //   _isAudio == true ? speak(audio) : speak("");
  //   notifyListeners();
  // }
//!============================================

  String _name = "";
  String get name => _name;
  //String get name => prefs.getString("user_name") ?? _name;
  void changeName(name) {
    //prefs.setString("user_name", name);
    _name = name;
    notifyListeners();
  }

  String _lastName = "";
  String get lastName => _lastName;
  void changeLastName(lastName) {
    _lastName = lastName;
    notifyListeners();
  }

  //!========================
  String _chooseLang = "null";
  String get lang => _chooseLang;
  void changeLang(lang) {
    _chooseLang = lang;
    notifyListeners();
  }

  //!========================
  String _userType = "2";
  String get userType => _userType;
  void updateUserType(userType) {
    _userType = userType;
    prefs.setString("user_type", userType);
    notifyListeners();
  }

  //!========================
  String _email = "";
  String get email => _email;
  //String get email => prefs.getString("user_email") ?? _email;
  void updateUserEmail(email) {
    _email = email;
    //prefs.setString("user_email", userType);
    notifyListeners();
  }

  String _savedEmail = "";
  String get savedEmail => prefs.getString("saved_email") ?? _savedEmail;
  void updateSavedUserEmail(email) {
    _savedEmail = email;
    prefs.setString("saved_email", savedEmail);
    notifyListeners();
  }

  String _gender = "null";
  String get gender => _gender;
  void changeGenderl(gender) {
    _gender = gender;
    notifyListeners();
  }

  bool _genderSelected = false;
  bool get genderSelected => _genderSelected;
  void changeGenderlSelection(gender) {
    _genderSelected = gender;
    notifyListeners();
  }

  int _feelAboutLife = 0;
  int get feelAboutLife => _feelAboutLife;
  void addLifeFeelValue(feelAboutLife) {
    _feelAboutLife = feelAboutLife;
    notifyListeners();
  }

  //
  int _achiveGoalValue = 0;
  int get achiveGoalValue => _achiveGoalValue;
  void updateAchiveGoalValue(achiveGoalValue) {
    _achiveGoalValue = achiveGoalValue;
    notifyListeners();
  }

  //Quizes
  String _isHopeImportant = "null";
  String get hopeIsImpotant => _isHopeImportant;
  void changeHopeImportant(aggrement) {
    _isHopeImportant = aggrement;
    notifyListeners();
  }

  //Quizes score
  int _totalQuizScore = 0;
  int get totalQuizScore => _totalQuizScore;
  void updateQuizScore(totalScore) {
    _totalQuizScore = totalScore;
    notifyListeners();
  }

  //choose an image
  int _chooseOnePicture = 0;
  int get chooseOnePicture => _chooseOnePicture;
  void changeOnePicture(chooseOnePicture) {
    _chooseOnePicture = chooseOnePicture;
    notifyListeners();
  }

  //select one word
  int _selectOneWord = 0;
  int get selectOneWord => _selectOneWord;
  void addOneWordIndex(chooseOnePicture) {
    _selectOneWord = chooseOnePicture;
    notifyListeners();
  }

  // ==== Sharedpreferences start
  //Happy Life Scale value for 2nd wheel chart
  // one area which is will be set as a goal

  String _oneSelectedArea = "null";
  String get oneSelectedArea => _oneSelectedArea;
  void addOneSelectedAre(oneArea) {
    _oneSelectedArea = oneArea;
    prefs.setString("oneSelectedArea", oneSelectedArea);
    notifyListeners();
  }

  String _oneSelectedAreaId = "";
  String get oneSelectedAreaId => _oneSelectedAreaId;
  void updateSelectedAreId(oneAreaId) {
    _oneSelectedAreaId = oneAreaId;
    prefs.setString("oneSelectedAreaId", oneSelectedAreaId);
    notifyListeners();
  }

  //response 1
  int _response1 = 0;
  int get response1 => _response1;
  void updateResponse1(response1) {
    _response1 = response1;
    prefs.setInt("response1", response1);
    notifyListeners();
  }

  // response 2
  int _response2 = 0;
  int get response2 => _response2;
  void updateResponse2(response2) {
    _response2 = response2;
    prefs.setInt("response2", response2);
    notifyListeners();
  }

  // response 3
  int _response3 = 0;
  int get response3 => _response3;
  void updateResponse3(response3) {
    _response3 = response3;
    prefs.setInt("response3", response3);
    notifyListeners();
  }

  // response 4
  int _response4 = 0;
  int get response4 => _response4;
  void updateResponse4(response4) {
    _response4 = response4;
    prefs.setInt("response4", response4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _response5 = 0;
  int get response5 => _response5;
  void updateResponse5(response5) {
    _response5 = response5;
    prefs.setInt("response5", response5);
    notifyListeners();
  }
  //!===========================================================================
  // response 6
  int _response6 = 0;
  int get response6 => _response6;
  void updateResponse6(response6) {
    _response6 = response6;
    prefs.setInt("response6", response6);
    notifyListeners();
  }
  //!===========================================================================
  // response 7
  int _response7 = 0;
  int get response7 => _response7;
  void updateResponse7(response7) {
    _response7 = response7;
    prefs.setInt("response7", response7);
    notifyListeners();
  }
  //!===========================================================================
  // response 8
  int _response8 = 0;
  int get response8 => _response8;
  void updateResponse8(response8) {
    _response8 = response8;
    prefs.setInt("response8", response8);
    notifyListeners();
  }
  //!===========================================================================
  // response 9
  int _response9 = 0;
  int get response9 => _response9;
  void updateResponse9(response9) {
    _response9 = response9;
    prefs.setInt("response9", response9);
    notifyListeners();
  }
  //!===========================================================================
  // response 10
  int _response10 = 0;
  int get response10 => _response10;
  void updateResponse10(response10) {
    _response10 = response10;
    prefs.setInt("response10", response10);
    notifyListeners();
  }

  //
  String _benefits = "null";
  String get benefits => _benefits;
  void updateBeneefits(benefits) {
    _benefits = benefits;
    prefs.setString("benefits", benefits);
    notifyListeners();
  }

  String _price = "null";
  String get price => _price;
  void updatePrice(price) {
    _price = price;
    prefs.setString("price", price);
    notifyListeners();
  }

  //
  int _importantYourGoal = 0;
  int get importantYourGoal => _importantYourGoal;
  void changeImportantYourGoal(importantYourGoal) {
    _importantYourGoal = importantYourGoal;
    prefs.setInt("importantYourGoal", importantYourGoal);
    notifyListeners();
  }

  int _worthYourEffort = 0;
  int get worthYourEffort => _worthYourEffort;
  void changeWorthYourEffort(worthYourEffort) {
    _worthYourEffort = worthYourEffort;
    prefs.setInt("worthYourEffort", worthYourEffort);
    notifyListeners();
  }

  int _believeYouCan = 0;
  int get believeYouCan => _believeYouCan;
  void changeBelieveYouCan(believeYouCan) {
    _believeYouCan = believeYouCan;
    prefs.setInt("believeYouCan", believeYouCan);
    notifyListeners();
  }
  //

  //* Skills & Qualities Already Have */

  //* =============== Skills Already have =============== */
  List _skillsSupportIndex = [];
  List get skillsSupportIndex => _skillsSupportIndex;
  void updateSkillsSupportIndex(skillsSupportIndex) {
    _skillsSupportIndex.add(skillsSupportIndex);
    notifyListeners();
  }

  List<String> _skillsSupportWordList = [];
  set adderSkillsSupportWord(List<String> list) {
    _skillsSupportWordList = [...list];
    notifyListeners();
  }

  List<String> get skillsSupportWordList => _skillsSupportWordList;
  void updateSkillsSupportWordList(skillsSupportWordList) {
    _skillsSupportWordList.add(skillsSupportWordList);
    notifyListeners();
  }

  clearSkillsSupportWordList() {
    _skillsSupportWordList.clear();
    notifyListeners();
  }

  // skills already have, ready to send the API
  String _skillsSupportSend = '';
  String get skillsSupportSend => _skillsSupportSend;
  void updateSkillsSupportSend(skillsSupportSend) {
    _skillsSupportSend = skillsSupportSend;
    prefs.setString("skillsSupportSend", skillsSupportSend);
    notifyListeners();
  }

  //* =============== Skills Need to Develop =============== */
  List _skillsDevelopIndex = [];
  List get skillsDevelopIndex => _skillsDevelopIndex;
  void updateSkillsDevelopIndex(skillsDevelopIndex) {
    _skillsDevelopIndex.add(skillsDevelopIndex);
    notifyListeners();
  }

  List<String> _skillsDevelopWordList = [];
  List<String> get skillsDeveloptWordList => _skillsDevelopWordList;
  void updateSkillsDevelopWordList(skillsDeveloptWordList) {
    _skillsDevelopWordList.add(skillsDeveloptWordList);
    notifyListeners();
  }

  // skills need to develop, ready to send the API
  String _skillsDevelopSend = '';
  String get skillsDevelopSend => _skillsDevelopSend;
  void updateSkillsDevelopSend(skillsDevelopSend) {
    _skillsDevelopSend = skillsDevelopSend;
    prefs.setString("skillsDevelopSend", skillsDevelopSend);
    notifyListeners();
  }

  //* ===============  =============== */

  //
  String _mindset = "null";
  String get mindset => _mindset;
  void changeMindsetl(mindset) {
    _mindset = mindset;
    prefs.setString("mindset", mindset);
    notifyListeners();
  }

  String _assurance = "null";
  String get assurance => _assurance;
  void changeAssurance(assurance) {
    _assurance = assurance;
    prefs.setString("assurance", assurance);
    notifyListeners();
  }
  //

  String _mainGoal = "null";
  String get mainGoal => _mainGoal;
  void changeMainGoal(mainGoal) {
    _mainGoal = mainGoal;
    prefs.setString("mainGoal", mainGoal);
    notifyListeners();
  }

  String _firstGoal = "null";
  String get firstGoal => _firstGoal;
  void changeFirstGoal(firstGoal) {
    _firstGoal = firstGoal;
    prefs.setString("firstGoal", firstGoal);
    notifyListeners();
  }
//!===>
  String _secondGoal = "";
  String get secondGoal => _secondGoal;
  void changeSecondGoal(secondGoal) {
    _secondGoal = secondGoal;
    prefs.setString("secondGoal", secondGoal);
    notifyListeners();
  }

  void clearSecondStepGoal() { //===>remove from provider Storage
    _secondGoal = "";
    notifyListeners();
  }
  void clearSecondStepFromSharedPref() { //====> remove from Shared pref
    _secondGoal = "";
    prefs.remove("secondGoal");
    notifyListeners();
  }
  //!==>

  String _thirdGoal = "";
  String get thirdGoal => _thirdGoal;
  void changeThirdGoal(thirdGoal) {
    _thirdGoal = thirdGoal;
    prefs.setString("thirdGoal", thirdGoal);
    notifyListeners();
  }
  void clearThirdStepGoal() {
    _thirdGoal = "";
    notifyListeners();
  }

   void clearthirdStepFromSharedPref() { //====> remove from Shared pref
    _thirdGoal = "";
    prefs.remove("thirdGoal");
    notifyListeners();
  }
  //!==>

  String _fourthGoal = "";
  String get fourthGoal => _fourthGoal;
  void changeFourthGoal(fourthGoal) {
    _fourthGoal = fourthGoal;
    prefs.setString("fourthGoal", fourthGoal);
    notifyListeners();
  }
   void clearFourthStepGoal() {
    _fourthGoal = "";
    notifyListeners();
   }
    void clearFourthStepFromSharedPref() { //====> remove from Shared pref
    _fourthGoal = "";
    prefs.remove("fourthGoal");
    notifyListeners();
  }
  //!==>

  String _fifthGoal = "";
  String get fifthGoal => _fifthGoal;
  void changeFifthGoal(fifthGoal) {
    _fifthGoal = fifthGoal;
    prefs.setString("fifthGoal", fifthGoal);
    notifyListeners();
  }
     void clearFifthStepGoal() {
    _fifthGoal = "";
    notifyListeners();
   }
    void clearFifthStepFromSharedPref() { //====> remove from Shared pref
    _fifthGoal = "";
    prefs.remove("fifthGoal");
    notifyListeners();
  }
  //!==>

  //
  String _startDate = "null";
  String get startDate => _startDate;
  void changeStartDate(startDate) {
    _startDate = startDate;
    prefs.setString("startDate", startDate);

    notifyListeners();
  }

  String _endDate = "null";
  String get endDate => _endDate;
  void changeEndDate(endDate) {
    _endDate = endDate;
    prefs.setString("endDate", endDate);

    notifyListeners();
  }
  //

  //!===========================================================first step
    //
  String _firstStepStartDate = "null";
  String get firstStepStartDate => _firstStepStartDate;
  void changeFirstStepStartDate(firstStepStartDate) {
    _firstStepStartDate = firstStepStartDate;
    prefs.setString("firstStepStartDate", firstStepStartDate);//* need to change to store in shared preference

    notifyListeners();
  }

  String _firstStepEndDate = "null";
  String get firstStepEndDate => _firstStepEndDate;
  void changefirstStepEndDate(firstStepEndDate) {
    _firstStepEndDate = firstStepEndDate;
    prefs.setString("firstStepEndDate", firstStepEndDate);//* need to change to store in shared preference

    notifyListeners();
  }
  //
    //!===========================================================2nd step

    //
  String _secondStepStartDate = "null";
  String get secondStepStartDate => _secondStepStartDate;
  void changeSecondStepStartDate(secondStepStartDate) {
    _secondStepStartDate = secondStepStartDate;
    prefs.setString("secondStepStartDate", secondStepStartDate);//* need to change to store in shared preference

    notifyListeners();
  }

  String _secondStepEndDate = "null";
  String get secondStepEndDate => _secondStepEndDate;
  void changeSecondStepEndDate(secondStepEndDate) {
    _secondStepEndDate = secondStepEndDate;
    prefs.setString("secondStepEndDate", secondStepEndDate);//* need to change to store in shared preference

    notifyListeners();
  }
  //

  void clearSecondStepStartDate() {
    _secondStepStartDate = "null";
    notifyListeners();
  }

  void clearSecondStepEndDate() {
    _secondStepEndDate = "null";
    notifyListeners();
  }


   void clearSecondStepStartDateFromSharedPref() { //!====> remove from Shared pref
    _secondStepStartDate = "null";
    prefs.remove("secondStepStartDate");
    notifyListeners();
  }
   void clearSecondStepEndDateFromSharedPref() { //!====> remove from Shared pref
    _secondStepEndDate = "null";
    prefs.remove("secondStepEndDate");
    notifyListeners();
  }
  //!==>






    //!===========================================================3rd step

    //
  String _step3StartDate = "null";
  String get step3StartDate => _step3StartDate;
  void changestep3StartDate(step3StartDate) {
    _step3StartDate = step3StartDate;
    prefs.setString("step3StartDate", step3StartDate);//* need to change to store in shared preference

    notifyListeners();
  }

  String _step3EndDate = "null";
  String get step3EndDate => _step3EndDate;
  void changestep3EndDate(step3EndDate) {
    _step3EndDate = step3EndDate;
    prefs.setString("step3EndDate", step3EndDate);//* need to change to store in shared preference

    notifyListeners();
  }
  //

    void clearstep3StartDate() {
    _step3StartDate = "null";
    notifyListeners();
  }

  void clearstep3EndDate() {
    _step3EndDate = "null";
    notifyListeners();
  }


    void clearThirdStepStartDateFromSharedPref() { //====> remove from Shared pref
    _step3StartDate = "null";
    prefs.remove("step3StartDate");
    notifyListeners();
  }
   void clearThirdStepEndDateFromSharedPref() { //====> remove from Shared pref
    _step3EndDate = "null";
    prefs.remove("step3EndDate");
    notifyListeners();
  }






   //!===========================================================4th step

    //
  String _step4StartDate = "null";
  String get step4StartDate => _step4StartDate;
  void changestep4StartDate(step4StartDate) {
    _step4StartDate = step4StartDate;
    prefs.setString("step4StartDate", step4StartDate);//* need to change to store in shared preference

    notifyListeners();
  }

  String _step4EndDate = "null";
  String get step4EndDate => _step4EndDate;
  void changestep4EndDate(step4EndDate) {
    _step4EndDate = step4EndDate;
    prefs.setString("step4EndDate", step4EndDate);//* need to change to store in shared preference

    notifyListeners();
  }
  //

      void clearstep4StartDate() {
    _step4StartDate = "null";
    notifyListeners();
  }

  void clearstep4EndDate() {
    _step4EndDate = "null";
    notifyListeners();
  }


   void clearFourthStepStartDateFromSharedPref() { //====> remove from Shared pref
    _step4StartDate = "null";
    prefs.remove("step4StartDate");
    notifyListeners();
  }
   void clearFourthStepEndDateFromSharedPref() { //====> remove from Shared pref
    _step4EndDate = "null";
    prefs.remove("step4EndDate");
    notifyListeners();
  }







     //!===========================================================5th step

    //
  String _step5StartDate = "null";
  String get step5StartDate => _step5StartDate;
  void changestep5StartDate(step5StartDate) {
    _step5StartDate = step5StartDate;
    prefs.setString("step5StartDate", step5StartDate);//* need to change to store in shared preference

    notifyListeners();
  }

  String _step5EndDate = "null";
  String get step5EndDate => _step5EndDate;
  void changestep5EndDate(step5EndDate) {
    _step5EndDate = step5EndDate;
    prefs.setString("step5EndDate", step5EndDate);//* need to change to store in shared preference

    notifyListeners();
  }
  //

       void clearstep5StartDate() {
    _step5StartDate = "null";
    notifyListeners();
  }

  void clearstep5EndDate() {
    _step5EndDate = "null";
    notifyListeners();
  }

  void clearFifthStepStartDateFromSharedPref() { //====> remove from Shared pref
    _step5StartDate = "null";
    prefs.remove("step5StartDate");
    notifyListeners();
  }
   void clearFifthStepEndDateFromSharedPref() { //====> remove from Shared pref
    _step5EndDate = "null";
    prefs.remove("step5EndDate");
    notifyListeners();
  }


  //!====================================================================================>



  int? _goalIndex;
  int get goalIndex => _goalIndex!;
  void updateGoalIndex(int index) {
    _goalIndex = index;
    notifyListeners();
  }

  //  XFile? image goal image ;
  XFile _goalImage = XFile('');
  XFile get goalImage => _goalImage;
  void changeGoalImage(userImage) {
    _goalImage = userImage;
    notifyListeners();
  }

  //  XFile? image user image;
  XFile _userImage = XFile(
      'https://raw.githubusercontent.com/muktabd/public-images/main/profile-placeholder.jpeg');
  XFile get userImage => _userImage;
  void changeUserImage(userImage) {
    _userImage = userImage;
    notifyListeners();
  }

  //wheel value
  String _friendsValue = "0";
  String get friendsValue => _friendsValue;
  void updateFriends(friendsValue) {
    _friendsValue = friendsValue;
    notifyListeners();
  }

  String _family = "0";
  String get familyValue => _family;
  void updateFamily(familyValue) {
    _family = familyValue;
    notifyListeners();
  }

  String _romance = "0";
  String get romance => _romance;
  void updateRomance(romance) {
    _romance = romance;
    notifyListeners();
  }

  String _finances = "0";
  String get finances => _finances;
  void updateFinances(finances) {
    _finances = finances;
    notifyListeners();
  }

  String _physicalHealth = "0";
  String get physicalHealth => _physicalHealth;
  void updatePhysicalHealth(physicalHealth) {
    _physicalHealth = physicalHealth;
    notifyListeners();
  }

  String _hobbies = "0";
  String get hobbies => _hobbies;
  void updateHobbies(hobbies) {
    _hobbies = hobbies;
    notifyListeners();
  }

  String _emotionalHealth = "0";
  String get emotionalHealth => _emotionalHealth;
  void updateEmotionalHealth(emotionalHealth) {
    _emotionalHealth = emotionalHealth;
    notifyListeners();
  }

  String _career = "0";
  String get career => _career;
  void updateCareer(career) {
    _career = career;
    notifyListeners();
  }

  String _spiritual = "0";
  String get spiritual => _spiritual;
  void updateSpiritual(spiritual) {
    _spiritual = spiritual;
    notifyListeners();
  }

  String _livingEnv = "0";
  String get livingEnv => _livingEnv;
  void updateLivingEnv(livingEnv) {
    _livingEnv = livingEnv;
    notifyListeners();
  }

  //

  //* ========= forgot password ========= */

  String? _receivedOtp;
  String get receivedOtp => _receivedOtp!;
  void updateReceivedOtp(receivedOtp) {
    _receivedOtp = receivedOtp;
    notifyListeners();
  }

  String _appoimentDate = "";
  String get appoimentDate => _appoimentDate;
  void updateAppointmentDate(appoimentDate) {
    _appoimentDate = appoimentDate;
    notifyListeners();
  }

  int _availableSlotIndex = 0;
  int get availableSlotIndex => _availableSlotIndex;
  void updateavailableSlotIndex(availableSlotIndex) {
    _availableSlotIndex = availableSlotIndex;
    notifyListeners();
  }

  // booking details

  String _slotTime = "";
  String get slotTime => _slotTime;
  void updateSlotTime(slotTime) {
    _slotTime = slotTime;
    notifyListeners();
  }

  String _coachId = "";
  String get coachId => _coachId;
  void updateCoachId(coachId) {
    _coachId = coachId;
    notifyListeners();
  }

  String _appoitmentDate = "";
  String get appointmentDate => _appoitmentDate;
  void confirmAppointmentDate(appointmentDate) {
    _appoitmentDate = appointmentDate;
    notifyListeners();
  }

  // String _fcmToken = "";
  String get fcmToken => prefs.getString("fcmToken") ?? "null";
  void updateFcmToken(String token) {
    prefs.setString("fcmToken", token);
    // _fcmToken = token;
    // notifyListeners();
  }

  //

  // Local CreditCard portion;
  List<String> get getCard => cardGetter();

  List<String> cardGetter() {
    if (prefs.containsKey('card_list')) {
      return prefs.getStringList('card_list') ?? [];
    } else {
      prefs.setStringList('card_list', <String>[]);
      return [];
    }
  }

  // void addCardDetails(ManualCreditCard card) {
  //   List<String> currentList = cardGetter();
  //   currentList.add(card.toJson());
  //   prefs.setStringList('card_list', currentList);
  //   notifyListeners();
  // }

  removeCardDetails(String card) {
    List<String> currentList = cardGetter();
    currentList.removeWhere((element) => element == card);
    prefs.setStringList('card_list', currentList);
    notifyListeners();
  }
// Local Card portionEnd;

  // store card index
  int? _cardIndex;
  int get cardIndex => _cardIndex!;
  void updateCardIndex(cardIndex) {
    _cardIndex = cardIndex;
    notifyListeners();
  }

// For assuring a complete Register!
  registrationSafetyNet({required String route, String? email}) {
    if (email != null) {
      prefs.setString("reg_email", email);
      log("Email Getting Saved!");
    }
    prefs.setString("reg_route", route);
  }

 bool checkSafetyNet({required BuildContext context, required String email, bool? value}) {
      log("Check Getting Called!");
    if (prefs.containsKey("reg_email") &&
        (prefs.getString("reg_email") == email)) {
      goNamedWithBool(context, prefs.getString("reg_route")!, value);
      log("email $email");
      log("stored email ${prefs.getString("reg_email")}");
      return true;
    } else {
      return false;
    }
  }

  clearSafetyNet() {
      log("Safetynet getting cleared!!");
    prefs.remove("reg_email");
    prefs.remove("reg_route");
  }
// For assuring a complete Register!




//Every 10 goal wheel response===============================================================================================================================================


//----------Romance Response----------
  //response 1
  int _romanceResponse1 = 0;
  int get romanceResponse1 => _romanceResponse1;
  void updateRomanceResponse1(romanceResponse1) {
    _romanceResponse1 = romanceResponse1;
    prefs.setInt("romanceResponse1", romanceResponse1);
    notifyListeners();
  }

  // response 2
  int _romanceResponse2 = 0;
  int get romanceResponse2 => _romanceResponse2;
  void updateRomanceResponse2(romanceResponse2) {
    _romanceResponse2 = romanceResponse2;
    prefs.setInt("romanceResponse2", romanceResponse2);
    notifyListeners();
  }

  // response 3
  int _romanceResponse3 = 0;
  int get romanceResponse3 => _romanceResponse3;
  void updateRomanceResponse3(romanceResponse3) {
    _romanceResponse3 = romanceResponse3;
    prefs.setInt("romanceResponse3", romanceResponse3);
    notifyListeners();
  }

  // response 4
  int _romanceResponse4 = 0;
  int get romanceResponse4 => _romanceResponse4;
  void updateRomanceResponse4(romanceResponse4) {
    _romanceResponse4 = romanceResponse4;
    prefs.setInt("romanceResponse4", romanceResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _romanceResponse5 = 0;
  int get romanceResponse5 => _romanceResponse5;
  void updateRomanceResponse5(romanceResponse5) {
    _romanceResponse5 = romanceResponse5;
    prefs.setInt("romanceResponse5", romanceResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _romanceResponse6 = 0;
  int get romanceResponse6 => _romanceResponse6;
  void updateRomanceResponse6(romanceResponse6) {
    _romanceResponse6 = romanceResponse6;
    prefs.setInt("romanceResponse6", romanceResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _romanceResponse7 = 0;
  int get romanceResponse7 => _romanceResponse7;
  void updateRomanceResponse7(romanceResponse7) {
    _romanceResponse7 = romanceResponse7;
    prefs.setInt("romanceResponse7", romanceResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _romanceResponse8 = 0;
  int get romanceResponse8 => _romanceResponse8;
  void updateRomanceResponse8(romanceResponse8) {
    _romanceResponse8 = romanceResponse8;
    prefs.setInt("romanceResponse8", romanceResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _romanceResponse9 = 0;
  int get romanceResponse9 => _romanceResponse9;
  void updateRomanceResponse9(romanceResponse9) {
    _romanceResponse9 = romanceResponse9;
    prefs.setInt("romanceResponse9", romanceResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _romanceResponse10 = 0;
  int get romanceResponse10 => _romanceResponse10;
  void updateRomanceResponse10(romanceResponse10) {
    _romanceResponse10 = romanceResponse10;
    prefs.setInt("romanceResponse10", romanceResponse10);
    notifyListeners();
  }

  //----------------------Friends Response----------------------//
  //response 1
  int _friendsResponse1 = 0;
  int get friendsResponse1 => _friendsResponse1;
  void updateFriendsResponse1(friendsResponse1) {
    _friendsResponse1 = friendsResponse1;
    prefs.setInt("friendsResponse1", friendsResponse1);
    notifyListeners();
  }

  // response 2
  int _friendsResponse2 = 0;
  int get friendsResponse2 => _friendsResponse2;
  void updateFriendsResponse2(friendsResponse2) {
    _friendsResponse2 = friendsResponse2;
    prefs.setInt("friendsResponse2", friendsResponse2);
    notifyListeners();
  }

  // response 3
  int _friendsResponse3 = 0;
  int get friendsResponse3 => _friendsResponse3;
  void updateFriendsResponse3(friendsResponse3) {
    _friendsResponse3 = friendsResponse3;
    prefs.setInt("friendsResponse3", friendsResponse3);
    notifyListeners();
  }

  // response 4
  int _friendsResponse4 = 0;
  int get friendsResponse4 => _friendsResponse4;
  void updateFriendsResponse4(friendsResponse4) {
    _friendsResponse4 = friendsResponse4;
    prefs.setInt("friendsResponse4", friendsResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _friendsResponse5 = 0;
  int get friendsResponse5 => _friendsResponse5;
  void updateFriendsResponse5(friendsResponse5) {
    _friendsResponse5 = friendsResponse5;
    prefs.setInt("friendsResponse5", friendsResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _friendsResponse6 = 0;
  int get friendsResponse6 => _friendsResponse6;
  void updateFriendsResponse6(friendsResponse6) {
    _friendsResponse6 = friendsResponse6;
    prefs.setInt("friendsResponse6", friendsResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _friendsResponse7 = 0;
  int get friendsResponse7 => _friendsResponse7;
  void updateFriendsResponse7(friendsResponse7) {
    _friendsResponse7 = friendsResponse7;
    prefs.setInt("friendsResponse7", friendsResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _friendsResponse8 = 0;
  int get friendsResponse8 => _friendsResponse8;
  void updateFriendsResponse8(friendsResponse8) {
    _friendsResponse8 = friendsResponse8;
    prefs.setInt("friendsResponse8", friendsResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _friendsResponse9 = 0;
  int get friendsResponse9 => _friendsResponse9;
  void updateFriendsResponse9(friendsResponse9) {
    _friendsResponse9 = friendsResponse9;
    prefs.setInt("friendsResponse9", friendsResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _friendsResponse10 = 0;
  int get friendsResponse10 => _friendsResponse10;
  void updateFriendsResponse10(friendsResponse10) {
    _friendsResponse10 = friendsResponse10;
    prefs.setInt("friendsResponse10", friendsResponse10);
    notifyListeners();
  }

  //--------------Family Response----------------------//
  //response 1
  int _familyResponse1 = 0;
  int get familyResponse1 => _familyResponse1;
  void updateFamilyResponse1(familyResponse1) {
    _familyResponse1 = familyResponse1;
    prefs.setInt("familyResponse1", familyResponse1);
    notifyListeners();
  }

  // response 2
  int _familyResponse2 = 0;
  int get familyResponse2 => _familyResponse2;
  void updateFamilyResponse2(familyResponse2) {
    _familyResponse2 = familyResponse2;
    prefs.setInt("familyResponse2", familyResponse2);
    notifyListeners();
  }

  // response 3
  int _familyResponse3 = 0;
  int get familyResponse3 => _familyResponse3;
  void updateFamilyResponse3(familyResponse3) {
    _familyResponse3 = familyResponse3;
    prefs.setInt("familyResponse3", familyResponse3);
    notifyListeners();
  }

  // response 4
  int _familyResponse4 = 0;
  int get familyResponse4 => _familyResponse4;
  void updateFamilyResponse4(familyResponse4) {
    _familyResponse4 = familyResponse4;
    prefs.setInt("familyResponse4", familyResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _familyResponse5 = 0;
  int get familyResponse5 => _familyResponse5;
  void updateFamilyResponse5(familyResponse5) {
    _familyResponse5 = familyResponse5;
    prefs.setInt("familyResponse5", familyResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _familyResponse6 = 0;
  int get familyResponse6 => _familyResponse6;
  void updateFamilyResponse6(familyResponse6) {
    _familyResponse6 = familyResponse6;
    prefs.setInt("familyResponse6", familyResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _familyResponse7 = 0;
  int get familyResponse7 => _familyResponse7;
  void updateFamilyResponse7(familyResponse7) {
    _familyResponse7 = familyResponse7;
    prefs.setInt("familyResponse7", familyResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _familyResponse8 = 0;
  int get familyResponse8 => _familyResponse8;
  void updateFamilyResponse8(familyResponse8) {
    _familyResponse8 = familyResponse8;
    prefs.setInt("familyResponse8", familyResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _familyResponse9 = 0;
  int get familyResponse9 => _familyResponse9;
  void updateFamilyResponse9(familyResponse9) {
    _familyResponse9 = familyResponse9;
    prefs.setInt("familyResponse9", familyResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _familyResponse10 = 0;
  int get familyResponse10 => _familyResponse10;
  void updateFamilyResponse10(familyResponse10) {
    _familyResponse10 = familyResponse10;
    prefs.setInt("familyResponse1", familyResponse10);
    notifyListeners();
  }

  //------------------------Physical Health & self care Response------------------//
  //response 1
  int _healthResponse1 = 0;
  int get healthResponse1 => _healthResponse1;
  void updateHealthResponse1(healthResponse1) {
    _healthResponse1 = healthResponse1;
    prefs.setInt("healthResponse1", healthResponse1);
    notifyListeners();
  }

  // response 2
  int _healthResponse2 = 0;
  int get healthResponse2 => _healthResponse2;
  void updateHealthResponse2(healthResponse2) {
    _healthResponse2 = healthResponse2;
    prefs.setInt("healthResponse2", healthResponse2);
    notifyListeners();
  }

  // response 3
  int _healthResponse3 = 0;
  int get healthResponse3 => _healthResponse3;
  void updateHealthResponse3(healthResponse3) {
    _healthResponse3 = healthResponse3;
    prefs.setInt("healthResponse3", healthResponse3);
    notifyListeners();
  }

  // response 4
  int _healthResponse4 = 0;
  int get healthResponse4 => _healthResponse4;
  void updateHealthResponse4(healthResponse4) {
    _healthResponse4 = healthResponse4;
    prefs.setInt("healthResponse4", healthResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _healthResponse5 = 0;
  int get healthResponse5 => _healthResponse5;
  void updateHealthResponse5(healthResponse5) {
    _healthResponse5 = healthResponse5;
    prefs.setInt("healthResponse5", healthResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _healthResponse6 = 0;
  int get healthResponse6 => _healthResponse6;
  void updateHealthResponse6(healthResponse6) {
    _healthResponse6 = healthResponse6;
    prefs.setInt("healthResponse6", healthResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _healthResponse7 = 0;
  int get healthResponse7 => _healthResponse7;
  void updateHealthResponse7(healthResponse7) {
    _healthResponse7 = healthResponse7;
    prefs.setInt("healthResponse7", healthResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _healthResponse8 = 0;
  int get healthResponse8 => _healthResponse8;
  void updateHealthResponse8(healthResponse8) {
    _healthResponse8 = healthResponse8;
    prefs.setInt("healthResponse8", healthResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _healthResponse9 = 0;
  int get healthResponse9 => _healthResponse9;
  void updateHealthResponse9(healthResponse9) {
    _healthResponse9 = healthResponse9;
    prefs.setInt("healthResponse9", healthResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _healthResponse10 = 0;
  int get healthResponse10 => _healthResponse10;
  void updateHealthResponse10(healthResponse10) {
    _healthResponse10 = healthResponse10;
    prefs.setInt("healthResponse10", healthResponse10);
    notifyListeners();
  }

  //========================Hobbies Response=================//

  int _hobbiesResponse1 = 0;
  int get hobbiesResponse1 => _hobbiesResponse1;
  void updateHobbiesResponse1(hobbiesResponse1) {
    _hobbiesResponse1 = hobbiesResponse1;
    prefs.setInt("hobbiesResponse1", hobbiesResponse1);
    notifyListeners();
  }

  // response 2
  int _hobbiesResponse2 = 0;
  int get hobbiesResponse2 => _hobbiesResponse2;
  void updateHobbiesResponse2(hobbiesResponse2) {
    _hobbiesResponse2 = hobbiesResponse2;
    prefs.setInt("hobbiesResponse2", hobbiesResponse2);
    notifyListeners();
  }

  // response 3
  int _hobbiesResponse3 = 0;
  int get hobbiesResponse3 => _hobbiesResponse3;
  void updateHobbiesResponse3(hobbiesResponse3) {
    _hobbiesResponse3 = hobbiesResponse3;
    prefs.setInt("hobbiesResponse3", hobbiesResponse3);
    notifyListeners();
  }

  // response 4
  int _hobbiesResponse4 = 0;
  int get hobbiesResponse4 => _hobbiesResponse4;
  void updateHobbiesResponse4(hobbiesResponse4) {
    _hobbiesResponse4 = hobbiesResponse4;
    prefs.setInt("hobbiesResponse4", hobbiesResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _hobbiesResponse5 = 0;
  int get hobbiesResponse5 => _hobbiesResponse5;
  void updateHobbiesResponse5(hobbiesResponse5) {
    _hobbiesResponse5 = hobbiesResponse5;
    prefs.setInt("hobbiesResponse5", hobbiesResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _hobbiesResponse6 = 0;
  int get hobbiesResponse6 => _hobbiesResponse6;
  void updateHobbiesResponse6(hobbiesResponse6) {
    _hobbiesResponse6 = hobbiesResponse6;
    prefs.setInt("hobbiesResponse6", hobbiesResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _hobbiesResponse7 = 0;
  int get hobbiesResponse7 => _hobbiesResponse7;
  void updateHobbiesResponse7(hobbiesResponse7) {
    _hobbiesResponse7 = hobbiesResponse7;
    prefs.setInt("hobbiesResponse7", hobbiesResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _hobbiesResponse8 = 0;
  int get hobbiesResponse8 => _hobbiesResponse8;
  void updateHobbiesResponse8(hobbiesResponse8) {
    _hobbiesResponse8 = hobbiesResponse8;
    prefs.setInt("hobbiesResponse8", hobbiesResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _hobbiesResponse9 = 0;
  int get hobbiesResponse9 => _hobbiesResponse9;
  void updateHobbiesResponse9(hobbiesResponse9) {
    _hobbiesResponse9 = hobbiesResponse9;
    prefs.setInt("hobbiesResponse9", hobbiesResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _hobbiesResponse10 = 0;
  int get hobbiesResponse10 => _hobbiesResponse10;
  void updateHobbiesResponse10(hobbiesResponse10) {
    _hobbiesResponse10 = hobbiesResponse10;
    prefs.setInt("hobbiesResponse10", hobbiesResponse10);
    notifyListeners();
  }

  //========================Finance Response===================

  int _financeResponse1 = 0;
  int get financeResponse1 => _financeResponse1;
  void updateFinanceResponse1(financeResponse1) {
    _financeResponse1 = financeResponse1;
    prefs.setInt("financeResponse1", financeResponse1);
    notifyListeners();
  }

  // response 2
  int _financeResponse2 = 0;
  int get financeResponse2 => _financeResponse2;
  void updateFinanceResponse2(financeResponse2) {
    _financeResponse2 = financeResponse2;
    prefs.setInt("financeResponse2", financeResponse2);
    notifyListeners();
  }

  // response 3
  int _financeResponse3 = 0;
  int get financeResponse3 => _financeResponse3;
  void updateFinanceResponse3(financeResponse3) {
    _financeResponse3 = financeResponse3;
    prefs.setInt("financeResponse3", financeResponse3);
    notifyListeners();
  }

  // response 4
  int _financeResponse4 = 0;
  int get financeResponse4 => _financeResponse4;
  void updateFinanceResponse4(financeResponse4) {
    _financeResponse4 = financeResponse4;
    prefs.setInt("financeResponse4", financeResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _financeResponse5 = 0;
  int get financeResponse5 => _financeResponse5;
  void updateFinanceResponse5(financeResponse5) {
    _financeResponse5 = financeResponse5;
    prefs.setInt("financeResponse5", financeResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _financeResponse6 = 0;
  int get financeResponse6 => _financeResponse6;
  void updateFinanceResponse6(financeResponse6) {
    _financeResponse6 = financeResponse6;
    prefs.setInt("financeResponse6", financeResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _financeResponse7 = 0;
  int get financeResponse7 => _financeResponse7;
  void updateFinanceResponse7(financeResponse7) {
    _financeResponse7 = financeResponse7;
    prefs.setInt("financeResponse7", financeResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _financeResponse8 = 0;
  int get financeResponse8 => _financeResponse8;
  void updateFinanceResponse8(financeResponse8) {
    _financeResponse8 = financeResponse8;
    prefs.setInt("financeResponse8", financeResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _financeResponse9 = 0;
  int get financeResponse9 => _financeResponse9;
  void updateFinanceResponse9(financeResponse9) {
    _financeResponse9 = financeResponse9;
    prefs.setInt("financeResponse9", financeResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _financeResponse10 = 0;
  int get financeResponse10 => _financeResponse10;
  void updateFinanceResponse10(financeResponse10) {
    _financeResponse10 = financeResponse10;
    prefs.setInt("financeResponse10", financeResponse10);
    notifyListeners();
  }

  //=============================Emotion Response=================//
  //response 1
  int _emotionResponse1 = 0;
  int get emotionResponse1 => _emotionResponse1;
  void updateEmotionResponse1(emotionResponse1) {
    _emotionResponse1 = emotionResponse1;
    prefs.setInt("emotionResponse1", emotionResponse1);
    notifyListeners();
  }

  // response 2
  int _emotionResponse2 = 0;
  int get emotionResponse2 => _emotionResponse2;
  void updateEmotionResponse2(emotionResponse2) {
    _emotionResponse2 = emotionResponse2;
    prefs.setInt("emotionResponse2", emotionResponse2);
    notifyListeners();
  }

  // response 3
  int _emotionResponse3 = 0;
  int get emotionResponse3 => _emotionResponse3;
  void updateEmotionResponse3(emotionResponse3) {
    _emotionResponse3 = emotionResponse3;
    prefs.setInt("emotionResponse3", emotionResponse3);
    notifyListeners();
  }

  // response 4
  int _emotionResponse4 = 0;
  int get emotionResponse4 => _emotionResponse4;
  void updateEmotionResponse4(emotionResponse4) {
    _emotionResponse4 = emotionResponse4;
    prefs.setInt("emotionResponse4", emotionResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _emotionResponse5 = 0;
  int get emotionResponse5 => _emotionResponse5;
  void updateEmotionResponse5(emotionResponse5) {
    _emotionResponse5 = emotionResponse5;
    prefs.setInt("emotionResponse5", emotionResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _emotionResponse6 = 0;
  int get emotionResponse6 => _emotionResponse6;
  void updateEmotionResponse6(emotionResponse6) {
    _emotionResponse6 = emotionResponse6;
    prefs.setInt("emotionResponse6", emotionResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _emotionResponse7 = 0;
  int get emotionResponse7 => _emotionResponse7;
  void updateEmotionResponse7(emotionResponse7) {
    _emotionResponse7 = emotionResponse7;
    prefs.setInt("emotionResponse7", emotionResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _emotionResponse8 = 0;
  int get emotionResponse8 => _emotionResponse8;
  void updateEmotionResponse8(emotionResponse8) {
    _emotionResponse8 = emotionResponse8;
    prefs.setInt("emotionResponse8", emotionResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _emotionResponse9 = 0;
  int get emotionResponse9 => _emotionResponse9;
  void updateEmotionResponse9(emotionResponse9) {
    _emotionResponse9 = emotionResponse9;
    prefs.setInt("emotionResponse9", emotionResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _emotionResponse10 = 0;
  int get emotionResponse10 => _emotionResponse10;
  void updateEmotionResponse10(emotionResponse10) {
    _emotionResponse10 = emotionResponse10;
    prefs.setInt("emotionResponse10", emotionResponse10);
    notifyListeners();
  }

  //======================Career Response=================================//
  //response 1
  int _careerResponse1 = 0;
  int get careerResponse1 => _careerResponse1;
  void updateCareerResponse1(careerResponse1) {
    _careerResponse1 = careerResponse1;
    prefs.setInt("careerResponse1", careerResponse1);
    notifyListeners();
  }

  // response 2
  int _careerResponse2 = 0;
  int get careerResponse2 => _careerResponse2;
  void updateCareerResponse2(careerResponse2) {
    _careerResponse2 = careerResponse2;
    prefs.setInt("careerResponse2", careerResponse2);
    notifyListeners();
  }

  // response 3
  int _careerResponse3 = 0;
  int get careerResponse3 => _careerResponse3;
  void updateCareerResponse3(careerResponse3) {
    _careerResponse3 = careerResponse3;
    prefs.setInt("careerResponse3", careerResponse3);
    notifyListeners();
  }

  // response 4
  int _careerResponse4 = 0;
  int get careerResponse4 => _careerResponse4;
  void updateCareerResponse4(careerResponse4) {
    _careerResponse4 = careerResponse4;
    prefs.setInt("careerResponse4", careerResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _careerResponse5 = 0;
  int get careerResponse5 => _careerResponse5;
  void updateCareerResponse5(careerResponse5) {
    _careerResponse5 = careerResponse5;
    prefs.setInt("careerResponse5", careerResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _careerResponse6 = 0;
  int get careerResponse6 => _careerResponse6;
  void updateCareerResponse6(careerResponse6) {
    _careerResponse6 = careerResponse6;
    prefs.setInt("careerResponse6", careerResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _careerResponse7 = 0;
  int get careerResponse7 => _careerResponse7;
  void updateCareerResponse7(careerResponse7) {
    _careerResponse7 = careerResponse7;
    prefs.setInt("careerResponse7", careerResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _careerResponse8 = 0;
  int get careerResponse8 => _careerResponse8;
  void updateCareerResponse8(careerResponse8) {
    _careerResponse8 = careerResponse8;
    prefs.setInt("careerResponse8", careerResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _careerResponse9 = 0;
  int get careerResponse9 => _careerResponse9;
  void updateCareerResponse9(careerResponse9) {
    _careerResponse9 = careerResponse9;
    prefs.setInt("careerResponse9", careerResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _careerResponse10 = 0;
  int get careerResponse10 => _careerResponse10;
  void updateCareerResponse10(careerResponse10) {
    _careerResponse10 = careerResponse10;
    prefs.setInt("careerResponse10", careerResponse10);
    notifyListeners();
  }

  //=======================Spirituality Response========================//

  //response 1
  int _spiritualityResponse1 = 0;
  int get spiritualityResponse1 => _spiritualityResponse1;
  void updateSpiritualityResponse1(spiritualityResponse1) {
    _spiritualityResponse1 = spiritualityResponse1;
    prefs.setInt("spiritualityResponse1", spiritualityResponse1);
    notifyListeners();
  }

  // response 2
  int _spiritualityResponse2 = 0;
  int get spiritualityResponse2 => _spiritualityResponse2;
  void updateSpiritualityResponse2(spiritualityResponse2) {
    _spiritualityResponse2 = spiritualityResponse2;
    prefs.setInt("spiritualityResponse2", spiritualityResponse2);
    notifyListeners();
  }

  // response 3
  int _spiritualityResponse3 = 0;
  int get spiritualityResponse3 => _spiritualityResponse3;
  void updateSpiritualityResponse3(spiritualityResponse3) {
    _spiritualityResponse3 = spiritualityResponse3;
    prefs.setInt("spiritualityResponse3", spiritualityResponse3);
    notifyListeners();
  }

  // response 4
  int _spiritualityResponse4 = 0;
  int get spiritualityResponse4 => _spiritualityResponse4;
  void updateSpiritualityResponse4(spiritualityResponse4) {
    _spiritualityResponse4 = spiritualityResponse4;
    prefs.setInt("spiritualityResponse4", spiritualityResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _spiritualityResponse5 = 0;
  int get spiritualityResponse5 => _spiritualityResponse5;
  void updateSpiritualityResponse5(spiritualityResponse5) {
    _spiritualityResponse5 = spiritualityResponse5;
    prefs.setInt("spiritualityResponse5", spiritualityResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _spiritualityResponse6 = 0;
  int get spiritualityResponse6 => _spiritualityResponse6;
  void updateSpiritualityResponse6(spiritualityResponse6) {
    _spiritualityResponse6 = spiritualityResponse6;
    prefs.setInt("spiritualityResponse6", spiritualityResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _spiritualityResponse7 = 0;
  int get spiritualityResponse7 => _spiritualityResponse7;
  void updateSpiritualityResponse7(spiritualityResponse7) {
    _spiritualityResponse7 = spiritualityResponse7;
    prefs.setInt("spiritualityResponse7", spiritualityResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _spiritualityResponse8 = 0;
  int get spiritualityResponse8 => _spiritualityResponse8;
  void updateSpiritualityResponse8(spiritualityResponse8) {
    _spiritualityResponse8 = spiritualityResponse8;
    prefs.setInt("spiritualityResponse8", spiritualityResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _spiritualityResponse9 = 0;
  int get spiritualityResponse9 => _spiritualityResponse9;
  void updateSpiritualityResponse9(spiritualityResponse9) {
    _spiritualityResponse9 = spiritualityResponse9;
    prefs.setInt("spiritualityResponse9", spiritualityResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _spiritualityResponse10 = 0;
  int get spiritualityResponse10 => _spiritualityResponse10;
  void updateSpiritualityResponse10(spiritualityResponse10) {
    _spiritualityResponse10 = spiritualityResponse10;
    prefs.setInt("spiritualityResponse10", spiritualityResponse10);
    notifyListeners();
  }

  //============================Livg Environment Response==========================//
  //response 1
  int _livingEnvResponse1 = 0;
  int get livingEnvResponse1 => _livingEnvResponse1;
  void updateLivingEnvResponse1(livingEnvResponse1) {
    _livingEnvResponse1 = livingEnvResponse1;
    prefs.setInt("livingEnvResponse1", livingEnvResponse1);
    notifyListeners();
  }

  // response 2
  int _livingEnvResponse2 = 0;
  int get livingEnvResponse2 => _livingEnvResponse2;
  void updateLivingEnvResponse2(livingEnvResponse2) {
    _livingEnvResponse2 = livingEnvResponse2;
    prefs.setInt("livingEnvResponse2", livingEnvResponse2);
    notifyListeners();
  }

  // response 3
  int _livingEnvResponse3 = 0;
  int get livingEnvResponse3 => _livingEnvResponse3;
  void updateLivingEnvResponse3(livingEnvResponse3) {
    _livingEnvResponse3 = livingEnvResponse3;
    prefs.setInt("livingEnvResponse3", livingEnvResponse3);
    notifyListeners();
  }

  // response 4
  int _livingEnvResponse4 = 0;
  int get livingEnvResponse4 => _livingEnvResponse4;
  void updateLivingEnvResponse4(livingEnvResponse4) {
    _livingEnvResponse4 = livingEnvResponse4;
    prefs.setInt("livingEnvResponse4", livingEnvResponse4);
    notifyListeners();
  }

  //!===========================================================================
  // response 5
  int _livingEnvResponse5 = 0;
  int get livingEnvResponse5 => _livingEnvResponse5;
  void updateLivingEnvResponse5(livingEnvResponse5) {
    _livingEnvResponse5 = livingEnvResponse5;
    prefs.setInt("livingEnvResponse5", livingEnvResponse5);
    notifyListeners();
  }

  //!===========================================================================
  // response 6
  int _livingEnvResponse6 = 0;
  int get livingEnvResponse6 => _livingEnvResponse6;
  void updateLivingEnvResponse6(livingEnvResponse6) {
    _livingEnvResponse6 = livingEnvResponse6;
    prefs.setInt("livingEnvResponse6", livingEnvResponse6);
    notifyListeners();
  }

  //!===========================================================================
  // response 7
  int _livingEnvResponse7 = 0;
  int get livingEnvResponse7 => _livingEnvResponse7;
  void updateLivingEnvResponse7(livingEnvResponse7) {
    _livingEnvResponse7 = livingEnvResponse7;
    prefs.setInt("livingEnvResponse7", livingEnvResponse7);
    notifyListeners();
  }

  //!===========================================================================
  // response 8
  int _livingEnvResponse8 = 0;
  int get livingEnvResponse8 => _livingEnvResponse8;
  void updateLivingEnvResponse8(livingEnvResponse8) {
    _livingEnvResponse8 = livingEnvResponse8;
    prefs.setInt("livingEnvResponse8", livingEnvResponse8);
    notifyListeners();
  }

  //!===========================================================================
  // response 9
  int _livingEnvResponse9 = 0;
  int get livingEnvResponse9 => _livingEnvResponse9;
  void updateLivingEnvResponse9(livingEnvResponse9) {
    _livingEnvResponse9 = livingEnvResponse9;
    prefs.setInt("livingEnvResponse9", livingEnvResponse9);
    notifyListeners();
  }

  //!===========================================================================
  // response 10
  int _livingEnvResponse10 = 0;
  int get livingEnvResponse10 => _livingEnvResponse10;
  void updateLivingEnvResponse10(livingEnvResponse10) {
    _livingEnvResponse10 = livingEnvResponse10;
    prefs.setInt("livingEnvResponse10", livingEnvResponse10);
    notifyListeners();
  }
}
