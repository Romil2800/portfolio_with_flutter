import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              foregroundImage: NetworkImage('https://picsum.photos/200'),
              radius: 25,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Romil',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.black12),
                backgroundColor: Colors.amberAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.send_sharp),
              ),
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact me',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
