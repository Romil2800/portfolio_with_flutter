import 'package:flutter/material.dart';
import '../utils/util.dart';
import '../widgets/button_row.dart';
import '../widgets/body.dart';
import '../widgets/contactButton.dart';

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
          ContactButton(
            buttonText: 'Contact me',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              launchMailto();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 100,
                bottom: 48,
              ),
              child: SizedBox(
                child: ButtomRow(),
                height: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
