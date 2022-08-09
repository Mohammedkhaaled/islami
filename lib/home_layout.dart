import 'package:flutter/material.dart';
import 'package:islami/tabs/Tasbeeh.dart';
import 'package:islami/tabs/ahadeth/ahadeth.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/radio.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName ='home';
  int currentIndex=0;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_background.png",
        width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Islami',style: Theme.of(context).textTheme.headline1,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              onTap:(index) {
                currentIndex=index;
                setState((){

                });
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'Quran'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Tasbeh'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'Radio'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),label: 'Ahadeth'),
              ],
            ),
          ),
          body: tabs[currentIndex],
        )
      ],
    );
  }
  List<Widget> tabs=[QuranScreen(),Tasbeehscreen(),RadioScreen(),AhadethScreen()];
}
