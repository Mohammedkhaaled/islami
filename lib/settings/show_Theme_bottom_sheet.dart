import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ShowThemebottomSheet extends StatefulWidget {
  const ShowThemebottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowThemebottomSheet> createState() => _ShowThemebottomSheetState();
}

class _ShowThemebottomSheetState extends State<ShowThemebottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.ChangeAppTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: SelectedTheme('Light',
                  provider.themeMode == ThemeMode.light ? true : false)),
          InkWell(
              onTap: () {
                provider.ChangeAppTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: SelectedTheme(
                  'Dark', provider.themeMode == ThemeMode.dark ? true : false))
        ],
      ),
    );
  }

  Widget SelectedLanguage(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          Icon(
            Icons.check,
            size: 25,
            color: Theme.of(context).primaryColor,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.headline2),
          Icon(
            Icons.check,
            size: 25,
          ),
        ],
      );
    }
  }

  Widget SelectedTheme(String text, bool selected) {
    if (selected) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.white)),
          Icon(
            Icons.check,
            size: 25,
            color: Theme.of(context).primaryColor,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.headline2),
          Icon(
            Icons.check,
            size: 25,
          )
        ],
      );
    }
  }
}
