import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_title.dart';
import 'package:quran_app/utils/image_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
   List<HadithItem> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if(hadithList.isEmpty) loadHadithFile();
    return hadithList.isEmpty ? Center(child: CircularProgressIndicator(),) :
    Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Image.asset(getImagePathByName('hadith_header_image.png'))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.symmetric(horizontal: BorderSide(
                      color: Theme.of(context).dividerColor, width: 3))
              ),
              child: Text(AppLocalizations.of(context)!.ahadith, textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium
                ,)),

          Expanded(
            flex: 2,
            child: ListView.separated(itemBuilder: (context, index) => HadithTitleWidget(hadithItem: hadithList[index],),
                separatorBuilder: (context, index) => Container(
                  color: Theme.of(context).dividerColor,
                  width: double.infinity,
                  height: 2,
                ),
                itemCount: hadithList.length),
          )
        ],
      ),
    );
  }

  void loadHadithFile() async {


    String fileContent = await rootBundle.loadString(
        'assets/files/ahadeth.txt');

    List<String> allHadithList = fileContent.split('#');
    for (int i = 0; i < allHadithList.length; i++) {
      List<String> hadithLines = allHadithList[i].trim().split('\n');
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      HadithItem hadith = HadithItem(
          hadithTitle: hadithTitle, hadithContent: hadithContent);
      hadithList.add(hadith);
    }
    setState(() {
      
    });

  }
}


class HadithItem {
  String hadithTitle;
  String hadithContent;

  HadithItem({required this.hadithTitle, required this.hadithContent,});
}
