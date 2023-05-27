import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'utilities/colors.dart';
import 'utilities/providers/navprovider.dart';
import 'utilities/providers/randomcontrastcolor.dart';
import 'utilities/providers/themeprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavProvider()),
        ChangeNotifierProvider(
            create: (context) => ThemeProvider(ThemeMode.light)),
        ChangeNotifierProvider(create: (context) => ColorProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: darkgrey,
            fontFamily: 'bit',
            scaffoldBackgroundColor: offwhite,
            iconTheme: IconThemeData(color: darkgrey),
          ),
          darkTheme: ThemeData(
            primaryColor: offerwhite,
            fontFamily: 'bit',
            scaffoldBackgroundColor: darkergrey,
            iconTheme: IconThemeData(color: offerwhite),
          ),
          themeMode: themeProvider.themeMode,
          home: const Home(),
        );
      },
    );
  }
}
