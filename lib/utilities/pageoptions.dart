import 'package:flutter/material.dart';
import 'package:website/widgets/manifesto.dart';

// list of main screen widgets
//in same order as their side menu button

List<Widget> getPageOptions() {
  return <Widget>[
    const Manifesto(),
    // Add more widgets here
  ];
}
