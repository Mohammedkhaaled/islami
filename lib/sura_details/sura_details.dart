import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/app_provider.dart';
import 'package:islami/sura_details/suran_details_item.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName ='suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  var SuraDetailsArg;

  List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var pro = Provider.of<AppProvider>(context);
    if (verses.isEmpty) {
      loadFile(SuraDetailsArg.index);
    }

    return Stack(children: [
      Image.asset(
        pro.changeMainBackground(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    centerTitle: true,
    title: Text('${SuraDetailsArg.SuraName}',style: Theme.of(context).textTheme.headline1,),
    ),
    body: verses.isEmpty?
        Center(child: CircularProgressIndicator())

    :ListView.separated(
      separatorBuilder: (_,index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          color: Theme.of(context).primaryColor,
          height: 1,
        );
      },

      itemBuilder: (_,index){
      return SuraDetailsItem(verses[index].toString());
    },
      itemCount: verses.length,
    ) ,

    )
      ]
    );
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    // print(content);
    List<String> ayat= content.split('\n');
    verses=ayat;
    setState((){});

  }
}
class SuraDetailsArgs{
  String SuraName;
  int index;
  SuraDetailsArgs(this.SuraName,this.index);
}
