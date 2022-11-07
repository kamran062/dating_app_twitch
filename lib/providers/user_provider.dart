import 'package:dating_app_twitch/model/user_model.dart';
import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier{

   User _user =User(userName: '', email: '', uid: '');

   User get user => _user;

   setUser(User user){
     _user = user;
     notifyListeners();
   }


}