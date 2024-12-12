
import 'package:ecommerce_task/config/app_config.dart';
import 'package:flutter/cupertino.dart';

class BottomNavBar extends StatelessWidget {
final int? currentIndex;
final ValueChanged<int>? onTap;
  const BottomNavBar({super.key, this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:  const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_open),
          label: 'Product',
        ),
      ],
      currentIndex: currentIndex!,
      selectedItemColor: Colors.amber[800],
      onTap:onTap,
    );
  }
}
