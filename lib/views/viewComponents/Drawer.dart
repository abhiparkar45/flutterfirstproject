import 'package:flutter/material.dart';
import 'package:newproject/Utils/CustomThemeExtensions.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child:
        // Theme(
        //   data: Theme.of(context).copyWith(
        //       canvasColor: Theme.of(context).drawerTheme.backgroundColor),
        //   child:
        Drawer(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: Image.asset(
                            'assets/images/image-not-found.png',
                            fit: BoxFit.contain,
                          ).image,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Some Name",
                          style: Theme.of(context)
                              .extension<CustomThemeExtentions>()!
                              .UsernameStyle,
                        )
                      ],
                    ),
                  ),
                ),
                Container()
              ],
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
