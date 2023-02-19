import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/utils/colors.dart';

import 'package:task_app/utils/text_widget.dart';
import 'package:task_app/widgets/home/card_widget.dart';

class HomeWidget extends StatelessWidget {
  final String time;
  final String type;
  final String message;
  final String id;
  const HomeWidget({
    super.key,
    required this.time,
    required this.type,
    required this.message,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          width: 80,
          child: Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
              const TextWidget(),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: type == "LOCAL TASK"
                                ? kcolortypeactive
                                : type == "BOOKMARK"
                                    ? kcolortypeInactive
                                    : kurgentcolor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 15,
                          child: Text(
                            type,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: type == "LOCAL TASK"
                                  ? kcolortextbgactive
                                  : kcolortextbgInactive,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 15,
                          child: FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Theme.of(context).primaryColor,
                            size: 20,
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 10,
                          right: 10,
                          child: SizedBox(
                            height: 50,
                            child: Text(
                              message,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CardWidget(
                      message: "Settings",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CardWidget(message: "Sneeze")
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
