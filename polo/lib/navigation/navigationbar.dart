

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navigationBar extends StatefulWidget {


  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
      gap: 8,
      onTabChange: (index){


      },
      padding: EdgeInsets.all(16),
      tabs: [
        GButton(icon: Icons.home,
          text: 'home',),
        GButton(icon: Icons.list,
          text: 'list',),
        GButton(icon: Icons.comment
          ,text: 'send',),
        GButton(icon: Icons.settings,
          text: 'ayarlar',)
      ],

    );
  }
}
