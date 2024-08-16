import 'package:flutter_pos_app/model/user.dart';
import 'package:flutter_pos_app/preferences/userPreferences/user_preferences.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController {
  Rx<User> _currentUser = User(0, '', '', '').obs;
  User get user => _currentUser.value;

  getUserInfo() async {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUser();
    _currentUser.value = getUserInfoFromLocalStorage!;
  }
}
