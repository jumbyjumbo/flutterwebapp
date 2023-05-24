import 'package:flutter/material.dart';
import 'package:website/colors.dart';
import 'widgets/aboutzaxorelmarquee.dart';
import 'widgets/titlecontainer.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final Uri linktreeURL = Uri.parse('https://linktr.ee/zaksorel');

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchUrl(linktreeURL);
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: primaryColor,
                spreadRadius: 3.0,
                offset: const Offset(3.0, 3.0), // Offset shadow to bottom left
              ),
            ],
            shape: BoxShape.circle,
            border: Border.all(
              color: primaryColor, // Replace with your custom color
              width: 3.0, // Replace with your desired width
            ),
          ),
          child: ClipOval(
            child: Image.asset('zaxorel.png'),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            TitleContainer(screenWidth: screenWidth),
          ])),
          SliverStickyHeader(
            header: AboutZaxorelMarquee(
                screenWidth: screenWidth, screenHeight: screenHeight),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 2000,
                    width: screenWidth,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
