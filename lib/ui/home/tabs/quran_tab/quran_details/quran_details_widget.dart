import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
String verse;
VerseWidget({required this.verse});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Text(verse, textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: Theme.of(context).textTheme.bodySmall,),
        ),
      ],
    );
  }
}
