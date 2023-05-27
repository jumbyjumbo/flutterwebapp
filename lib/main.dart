import 'package:flutter/material.dart';
import 'utilities/colors.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'utilities/navigation.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NavigationModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'bit',
          scaffoldBackgroundColor: backgroundColor,
          primaryColor: primaryColor),
      home: const Home(),
    );
  }
}
