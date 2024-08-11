import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                myProvider.changeAppTheme(ThemeMode.light);
              },
              child: myProvider.currentTheme == ThemeMode.light
                  ? buildSelectedThemeItem(AppLocalizations.of(context)!.light)
                  : buildUnSelectedThemeItem(
                      AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                myProvider.changeAppTheme(ThemeMode.dark);
              },
              child: myProvider.currentTheme == ThemeMode.dark ? buildSelectedThemeItem(AppLocalizations.of(context)!.dark):
                  buildUnSelectedThemeItem(AppLocalizations.of(context)!.dark))
        ],
      ),
    );
  }

  Widget buildSelectedThemeItem(String selectedTheme) {
    return Row(
      children: [
        Expanded(
          child: Text(
            selectedTheme,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).colorScheme.onPrimary,
        )
      ],
    );
  }

  Widget buildUnSelectedThemeItem(String unSelectedTheme) {
    return Text(unSelectedTheme,
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: Theme.of(context).colorScheme.secondary));
  }
}
