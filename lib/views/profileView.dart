import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              elevation: 5.0,
              fillColor: Color(0xFFF5F6F9),
              child: Icon(Icons.arrow_back_ios, color: Colors.blue,),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          )
        ],
      ),
    );
  }
}
