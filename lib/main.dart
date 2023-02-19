import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/provider/task_provider.dart';
import 'package:task_app/responsive/mobile_screen_layout.dart';
import 'package:task_app/responsive/responsive.dart';
import 'package:task_app/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => TaskProvider()),
        ),
      ],
      child: MaterialApp(
        title: 'Task App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          // ignore: deprecated_member_use
          accentColor: Colors.blue,
        ),
        home: const ResponsiveLayout(
          MobileScreenLayout: MobileScreenLayout(),
          WebScreenLayout: WebScreenLayout(),
        ),
      ),
    );
  }
}
