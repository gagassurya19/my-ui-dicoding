import 'package:flutter/material.dart';
import 'package:my_ui_dicoding/screen/ui_profile.dart';

class UIHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Text('UI Home'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UIProfile()));
          },
          child: Text('Go to Profile'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black54)),
        ),
        InputData(),
        Text(
            "Maaf cuman sederhana, karena deadline mepet dan saya sendiri masih banyak tugas yang harus diselesaikan.")
      ]),
    ));
  }
}

// Input TextField
class InputData extends StatefulWidget {
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Tulis nama kamu disini',
              labelText: 'Nama Kamu',
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
          Text(_name),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Data tersubmit, $_name'),
                    );
                  });
            },
            child: Text('Submit'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black54)),
          ),
        ],
      ),
    );
  }
}
