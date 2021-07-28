import 'package:flutter/material.dart';
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
              print('Hello world');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: Image.asset('headshot.png'),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'I \'m Romil.\nA Mobile Developer',
                              style:
                                  TextStyle(fontSize: 44.5, color: Colors.blue),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ContactButton(
                                buttonText: 'Drop me a line',
                                icon: Icon(Icons.mail_outline),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
