import 'package:flutter/material.dart';
import 'package:quran_app/ui/home/tabs/quran_tab/quran_details/quran_details_screen.dart';

class SuraTitleWidget extends StatelessWidget {
String suraTitle;
String numberOfVerses;
int index;
SuraTitleWidget({required this.suraTitle, required this.numberOfVerses, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,
        arguments: QuranDetailsArguments(suraTitle: suraTitle, index: index)
        );
      },
      child: IntrinsicHeight(
        child: Container(
          alignment: Alignment.center,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text(suraTitle, textAlign: TextAlign.center, style:Theme.of(context).textTheme.bodyMedium,)),
              Container(
                width: 4,

                color: Theme.of(context).dividerColor,
              ),
              Expanded(child: Text(numberOfVerses, textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
                ))
            ],
          )
        ),
      ),
    );
  }
}

class QuranDetailsArguments{
  String suraTitle;
  int index;
  QuranDetailsArguments({required this.suraTitle, required this.index});
}
