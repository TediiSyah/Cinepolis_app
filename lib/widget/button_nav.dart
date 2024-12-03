import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav(this.page);
  int page;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  getPage(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/boking');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/movie');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/cinema');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Color.fromRGBO(23, 41, 116, 1),
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      currentIndex: widget.page,
      onTap: getPage,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          backgroundColor: Colors.white,
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.confirmation_num),
          backgroundColor: Colors.white,
          label: "My Boking",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_filter),
          backgroundColor: Colors.white,
          label: "Movie",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_roll),
          backgroundColor: Colors.white,
          label: "Cinema",
        ),
      ],
    );
  }
}
