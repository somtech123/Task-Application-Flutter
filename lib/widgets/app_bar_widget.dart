import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/utils/colors.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final String secondaryTex;
  final FaIcon icon;
  const AppBarWidget({
    super.key,
    required this.text,
    this.secondaryTex = '',
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).primaryColor,
      title: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: activeColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    secondaryTex,
                    style: const TextStyle(
                      fontSize: 18,
                      color: inactiveColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              CircleAvatar(
                // ignore: deprecated_member_use
                backgroundColor: Theme.of(context).accentColor,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: icon,
              )
            ],
          ),
        ],
      ),
    );
  }
}
