import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Widget get child => AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
        title: const Column(children: [
          Text("Current Location",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              Text("Palestine, Tulkarem", style: TextStyle(fontSize: 18)),
            ],
          )
        ]),
      );

  @override
  Size get preferredSize => Size.fromHeight(80);
}
