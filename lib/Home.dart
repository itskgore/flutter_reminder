import 'package:flutter/material.dart';
import 'package:customize_notification/sharedPrefs.dart';
import 'customizedNotification.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    var startTime = DateTime(now.year, now.month, now.day, 07, 00); // eg 7 AM
    var endTime = DateTime(now.year, now.month, now.day, 20, 00); // eg 10 PM
    setStartTime(startTime);
    setEndTime(endTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Generate Alarm'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Select a specific time for your Goal',
                style: TextStyle(
                    // color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            RaisedButton(
              color: Colors.orange,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CustomizedNotification();
                }));
              },
              child: Container(
                height: 60,
                width: 100,
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
