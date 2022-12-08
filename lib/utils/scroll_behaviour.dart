import 'package:flutter/material.dart';


/// my custom scroll behaviour that doent have glow effect when over scrolling
class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}