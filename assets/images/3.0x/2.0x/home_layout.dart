import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName ='home';

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
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
              BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
            ],
          ),
        )
      ],
    );
  }
}
