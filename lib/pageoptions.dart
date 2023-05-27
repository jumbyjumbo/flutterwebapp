import 'package:flutter/material.dart';
import 'package:website/widgets/options/manifesto.dart';
import 'widgets/options/chat.dart';

// list of main screen widgets

List<Widget> getPageOptions() {
  return <Widget>[
    const Manifesto(),
    const Chat(),

    // Add more widgets here
  ];
}
