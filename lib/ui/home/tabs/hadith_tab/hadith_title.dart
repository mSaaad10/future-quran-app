import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_details/hadith_details_screen.dart';
import 'package:quran_app/ui/home/tabs/hadith_tab/hadith_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

//
  //
  HadithTitleWidget({required this.hadithItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadithDetailsScreen.routeName,
          arguments: hadithItem,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadithItem.hadithTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium
        ),
      ),
    );
  }
}
