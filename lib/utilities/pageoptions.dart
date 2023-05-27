import 'package:flutter/material.dart';
import 'package:website/widgets/manifesto.dart';

import '../widgets/chat.dart';

// list of main screen widgets
//in same order as their side menu button

List<Widget> getPageOptions() {
  return <Widget>[
    const Manifesto(),
    const Chat(),

    // Add more widgets here
  ];
}
