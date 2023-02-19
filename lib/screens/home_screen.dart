import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:task_app/provider/task_provider.dart';

import 'package:task_app/widgets/app_bar_widget.dart';
import 'package:task_app/widgets/home/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final task = Provider.of<TaskProvider>(context).getdata;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarWidget(
          text: 'Task',
          secondaryTex: DateFormat('MMMM d').format(
            DateTime.now(),
          ),
          icon: FaIcon(
            FontAwesomeIcons.plus,
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: task.length,
              itemBuilder: ((context, index) => HomeWidget(
                    time: DateFormat('h:mm a')
                        .format(task.values.toList()[index].time),
                    type: task.values.toList()[index].type.toUpperCase(),
                    message: task.values.toList()[index].message,
                    id: task.keys.toList()[index],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
