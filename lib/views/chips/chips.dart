import 'package:flutter/material.dart';

class ChipsPage extends StatefulWidget {
  ChipsPage({Key key}) : super(key: key);

  @override
  _ChipsPageState createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage> {
  bool selected1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chips'),
      ),
      body: Center(
        child: Column(
          children: [
            InputChip(
              label: Text('input chips'),
              // avatar: Icon(Icons.add),
              onSelected: (value) {
                setState(() {
                  selected1 = !selected1;
                });
              },
              selected: selected1,
            ),
            ChoiceChip(
              label: Text('Choice 1'),
              selected: true,
            ),
            ChoiceChip(
              label: Text('Choice 2'),
              selected: false,
            ),
            FilterChip(
              label: Text('Filter 2'),
              onSelected: (bool value) {},
            ),
            FilterChip(
              label: Text('Filter 3'),
              selected: true,
              onSelected: (bool value) {},
            ),
            ActionChip(
              avatar: Icon(Icons.delete),
              label: Text('Action 2'),
              onPressed: () {},
            ),
            ActionChip(
              avatar: Icon(
                Icons.alarm,
                color: Colors.redAccent,
              ),
              label: Text('Action 3',
                  style: TextStyle(
                    color: Colors.blue,
                  )),
              onPressed: () {},
              backgroundColor: Colors.amberAccent,
            ),
            ActionChip(
              avatar: Icon(Icons.location_on),
              label: Text('Action 4'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
