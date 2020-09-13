import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  final isSelected = <bool>[false, false, false];
  bool isSelected2 = false;
  IconData icon = Icons.favorite_border;
  void showToast(String text) {
    Fluttertoast.showToast(msg: text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  showToast('text button');
                },
                child: Text('Text Button')),
            OutlineButton.icon(
              onPressed: () {
                showToast('outline button');
              },
              highlightedBorderColor: Colors.black.withOpacity(0.1),
              icon: Icon(Icons.ac_unit),
              label: Text('outline button'),
            ),
            FlatButton.icon(
              textColor: Color(0xFF6200EE),
              onPressed: () {
                // Respond to button press
                showToast('FlatButton');
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("TEXT BUTTON"),
              splashColor: Colors.pink,
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            ToggleButtons(
              color: Colors.black.withOpacity(0.60),
              selectedColor: Color(0xFF6200EE),
              selectedBorderColor: Color(0xFF6200EE),
              fillColor: Color(0xFF6200EE).withOpacity(0.08),
              splashColor: Color(0xFF6200EE).withOpacity(0.12),
              hoverColor: Color(0xFF6200EE).withOpacity(0.04),
              borderRadius: BorderRadius.circular(4.0),
              constraints: BoxConstraints(minHeight: 36.0),
              isSelected: isSelected,
              onPressed: (index) {
                // Respond to button selection
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 1'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 2'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('BUTTON 3'),
                ),
              ],
            ),
            IconButton(
              icon: Icon(icon),
              color: Colors.pink,
              onPressed: () {
                // Respond to icon toggle
                setState(() {
                  isSelected2 = !isSelected2;
                  icon = isSelected2 ? Icons.favorite : Icons.favorite_border;
                });
              },
            ),
            FloatingActionButton(
              backgroundColor: const Color(0xff03dac6),
              foregroundColor: Colors.black,
              mini: true,
              onPressed: () {
                // Respond to button press
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton.extended(
              backgroundColor: const Color(0xff03dac6),
              foregroundColor: Colors.black,
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.add),
              label: Text('EXTENDED'),
            )
          ],
        ),
      ),
    );
  }
}
