import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/utils/image_utils.dart';

class HadithDetailsScreen extends StatelessWidget {
static const String routeName = '/hadithDetails';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    HadithItem item = ModalRoute.of(context)?.settings.arguments as HadithItem;
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
          title: Text(item.hadithTitle),
        ),
        body: Card(


          margin: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          child: SingleChildScrollView(child: Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Text(item.hadithContent, textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.bodySmall,))),
        ),
      ),
    );
  }
}
