import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeAppLang('en');
              },
              child: provider.currentLang == 'en' ? buildSelectedLanguageItem(AppLocalizations.of(context)!.english): buildUnSelectedLanguageItem(AppLocalizations.of(context)!.english)),
          SizedBox(
            height: 12,
          ),
    InkWell(
        onTap: () {
          provider.changeAppLang('ar');
        },
        child: provider.currentLang == 'ar' ? buildSelectedLanguageItem(AppLocalizations.of(context)!.arabic) :buildUnSelectedLanguageItem(AppLocalizations.of(context)!.arabic))
        ],
      ),
    );
  }

  Widget buildSelectedLanguageItem(String selectedLang) {
    return Row(
      children: [
        Expanded(
          child: Text(
            selectedLang,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).colorScheme.onPrimary
        )
      ],
    );
  }

  Widget buildUnSelectedLanguageItem(String unSelectedLang) {
    return Text(
        unSelectedLang,
        style:Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Theme.of(context).colorScheme.secondary
        ));
  }
}
