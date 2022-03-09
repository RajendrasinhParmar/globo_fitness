import 'package:flutter/material.dart';

class MenuBottom extends StatefulWidget {
  const MenuBottom({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.monitor_weight), label: 'BMI'),
        BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Training'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue[800],
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }

  void _onItemTapped (int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/bmi');
        break;
      case 2:
        Navigator.pushNamed(context, '/weather');
        break;
      case 3:
        Navigator.pushNamed(context, '/training');
        break;
    }
    setState(() {
      _selectedIndex = index;
    });
  }
}
