import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:quran_app/ui/home/tabs/setting_tab/language_bottom_sheet.dart';
import 'package:quran_app/ui/home/tabs/setting_tab/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SettingsTab extends StatefulWidget {

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.labelMedium,),
         SizedBox(height: 6,),
         InkWell(

           onTap: () {
             showLanguageBottomSheet();
           },
           child: Container(
             padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
             width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(18),
                border: Border.all(color:  Theme.of(context).dividerColor, width: 2),
               ),
               child: Text(provider.currentLang == 'en' ? AppLocalizations.of(context)!.english: AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.labelMedium,)),
         ),
        SizedBox(height: 8,),
         Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.labelMedium,),
         SizedBox(height: 6,),
         InkWell(
           onTap: (){
             showThemeBottomSheet();
           },
           child: Container(
               padding: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(18),
                 border: Border.all(color: Theme.of(context).dividerColor, width: 2),
               ),
               child: Text(provider.currentTheme == ThemeMode.light ? AppLocalizations.of(context)!.light: AppLocalizations.of(context)!.dark, style:Theme.of(context).textTheme.labelMedium,)),
         )
       ],
     ),
    );
  }

  void showLanguageBottomSheet() {
   showModalBottomSheet(context: context, builder: (context) => LanguageBottomSheet());
  }
  void showThemeBottomSheet() {
   showModalBottomSheet(context: context, builder: (context) => ThemeBottomSheet());
  }
}
