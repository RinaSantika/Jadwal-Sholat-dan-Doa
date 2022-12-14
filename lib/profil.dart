import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'ABOUT ME',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/rinas.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Rina Santika',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text('21120120120030'),
            ],
          ),
        ),
      ),
    );
  }
}
