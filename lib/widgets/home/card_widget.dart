import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/utils/colors.dart';

class CardWidget extends StatelessWidget {
  final String message;
  const CardWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: message == "Settings" ? kdim : kbrown,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                left: 20,
                top: 10,
                child: Text(
                  message,
                ),
              ),
              Positioned(
                right: 15,
                top: 10,
                child: FaIcon(
                  FontAwesomeIcons.ellipsis,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
