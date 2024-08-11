import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:quran_app/styles/my_theme_data.dart';
import 'package:quran_app/ui/home/home_screen.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_details/hadith_details_screen.dart';
import 'package:quran_app/ui/home/tabs/quran_tab/quran_details/quran_details_screen.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/ui/splash/splash_screen.dart';
void main(){
  runApp(ChangeNotifierProvider(
     create: (context) => SettingsProvider(), // singleton instanse
      child: MyApp()));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate, //
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale:Locale(myProvider.currentLang), // en ar
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: myProvider.currentTheme,

      routes: {
        SplashScreen.routeName :(_)=> SplashScreen(),
        HadithDetailsScreen.routeName :(_)=> HadithDetailsScreen(),
        QuranDetailsScreen.routeName : (_) => QuranDetailsScreen(),
        HomeScreen.routeName : (_)=> HomeScreen(),
      },


    );
  }
}


