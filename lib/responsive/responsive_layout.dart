import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const Responsivelayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 938) {
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
