import 'package:flutter/material.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ShowLanguagebottomSheet extends StatefulWidget {
  const ShowLanguagebottomSheet({Key? key}) : super(key: key);

  @override
  State<ShowLanguagebottomSheet> createState() =>
      _ShowLanguagebottomSheetState();
}

class _ShowLanguagebottomSheetState extends State<ShowLanguagebottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.ChangeAppLanguage('en');
                Navigator.pop(context);
              },
              child: SelectedLanguage(
                  'English', provider.AppLanguage == 'en' ? true : false)),
          InkWell(
              onTap: () {
                provider.ChangeAppLanguage('ar');
                Navigator.pop(context);
              },
              child: SelectedLanguage(
                  'العربية', provider.AppLanguage == 'en' ? false : true))
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
}
