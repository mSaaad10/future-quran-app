import 'package:flutter/material.dart';

class ChapterName extends StatelessWidget {
 String chapterName ;
 String numberOfVerses;
 ChapterName({required this.chapterName, required this.numberOfVerses });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(child: Text(chapterName, style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,)),
          Container(
            color: Theme.of(context).dividerColor,
            width: 3,
          ),
          Expanded(child: Text(numberOfVerses, style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}
