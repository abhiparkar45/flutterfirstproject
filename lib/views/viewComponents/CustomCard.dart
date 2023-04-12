import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: Image.asset(
                'assets/images/image-not-found.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Title"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Rating : 8.0"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
