import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  BottomNavigationPage({Key key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom navigation'),
      ),
      body: Text('body'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 26),
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 15,
        unselectedFontSize: 13,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        backgroundColor: Color(0xFF6200EE),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text('Favorites'),
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            title: Text('Music'),
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            title: Text('Places'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('News'),
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}
