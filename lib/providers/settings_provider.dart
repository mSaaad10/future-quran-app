import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;
  String currentLang = ' en';

  void changeAppTheme(ThemeMode newTheme){
    if(newTheme == currentTheme)return;
    currentTheme = newTheme; // darkTheme
    notifyListeners();
  }

void changeAppLang(String newLang){
    if(newLang == currentLang )return;
    currentLang = newLang;
    notifyListeners();
}

  String getBackgroundImage(){
    return currentTheme == ThemeMode.light ? 'main_background.png':'main_background_dark.png';
  }
}