import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/ui/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/ui/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/ui/home/tabs/setting_tab/settinjgs_tab.dart';
import 'package:quran_app/ui/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:quran_app/utils/image_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
 // 1
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          getImagePathByName(provider.getBackgroundImage()),
        ),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
             selectedIndex = index;
           setState(() {

           });
          },

          //backgroundColor: Color(0xFFB7935F),
          items: [
            BottomNavigationBarItem(
                // backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage(
                  getImagePathByName('quran_ic.png'),
                )),
                label: AppLocalizations.of(context)!.quran_tab),
            BottomNavigationBarItem(
                //backgroundColor: Color(0xFFB7935F),
                icon:
                    ImageIcon(AssetImage(getImagePathByName('hadith_ic.png'))),
                label: AppLocalizations.of(context)!.hadith_tab),
            BottomNavigationBarItem(
                //backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage(getImagePathByName('sebha_ic.png'))),
                label: AppLocalizations.of(context)!.tasbeh_tab),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    getImagePathByName('radio_ic.png'),
                  ),
                ),
                label: AppLocalizations.of(context)!.radio_tab),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label:  AppLocalizations.of(context)!.settings_tab)
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
