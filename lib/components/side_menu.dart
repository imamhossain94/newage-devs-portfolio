import 'package:flutter/material.dart';

import 'nav_button.dart';


class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavButton(
                title: 'Home',
                icon: Icons.home,
                onPressed: () {  },
                isActive: true,

              ),
              NavButton(
                title: 'Home',
                icon: Icons.home,
                onPressed: () {  },
                isActive: true,

              ),
              NavButton(
                title: 'Home',
                icon: Icons.home,
                onPressed: () {  },
                isActive: true,

              ),
              NavButton(
                title: 'Home',
                icon: Icons.home,
                onPressed: () {  },
                isActive: true,

              ),
              NavButton(
                title: 'Home',
                icon: Icons.home,
                onPressed: () {  },
                isActive: true,

              ),
            ],
          ),
        ),
      ),
    );
  }
}