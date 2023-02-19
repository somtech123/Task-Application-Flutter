// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

import 'package:task_app/utils/global_variale.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget MobileScreenLayout;

  final Widget WebScreenLayout;

  const ResponsiveLayout({
    super.key,
    required this.MobileScreenLayout,
    required this.WebScreenLayout,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraint) {
      if (constraint.maxWidth > webscreensize) {
        return widget.WebScreenLayout;
      }
      return widget.MobileScreenLayout;
    }));
  }
}
