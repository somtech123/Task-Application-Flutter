import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/provider/task_provider.dart';
import 'package:task_app/screens/home_screen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  String _dropdownitem = 'Local Task';
  List<String> type = [
    'Local Task',
    'BookMark',
    'Reminder',
    'Urgent',
    'Others',
  ];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final value = Provider.of<TaskProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      value.addNewTask(
                        DateTime.now().toString(),
                        _textEditingController.text,
                        _dropdownitem,
                        DateTime.now(),
                      );
                      _textEditingController.clear();
                    },
                    child: const Text(
                      'Done',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: SizedBox(
                    width: width * 0.55,
                    child: TextField(
                      // ignore: unnecessary_const
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'Add a caption...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: SizedBox(
                    height: height * 0.2,
                    width: width * 0.3,
                    child: AspectRatio(
                      aspectRatio: 457 / 425,
                      child: DropdownButton(
                        items: type.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        value: _dropdownitem,
                        onChanged: ((value) {
                          setState(() {
                            _dropdownitem = value!;
                          });
                        }),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
