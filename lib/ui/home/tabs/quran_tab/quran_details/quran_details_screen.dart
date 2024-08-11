import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';
import 'package:quran_app/ui/home/tabs/quran_tab/quran_details/quran_details_widget.dart';
import 'package:quran_app/ui/home/tabs/quran_tab/quran_title_widget.dart';
import 'package:quran_app/utils/image_utils.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = '/quranDetails';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    QuranDetailsArguments arguments =
        ModalRoute.of(context)?.settings.arguments as QuranDetailsArguments;
    if (verses.isEmpty) loadFile(arguments.index); // stop
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
            title: Text(arguments.suraTitle),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                 margin: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                child: ListView.builder(
                    itemBuilder: (context, index) =>
                        VerseWidget(verse: verses[index]),

                    itemCount: verses.length),
              )),
    );
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('/n');
    verses = suraLines;

    setState(() {});
  }
}
