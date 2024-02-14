import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Builder(builder: (context) {
            return SizedBox(
              height: 1000,
              width: 1000,
              child: Builder(builder: (context) {
                return PageView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 800),
                      child: Column(
                        children: [
                          Container(
                            color: canvasColor,
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Image(
                                image: AssetImage("images/aclcmandaue.png"),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'A member of the AMA Education System',
                                style: TextStyle(fontSize: 17, color: textColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}

const textColor = Color.fromARGB(255, 236, 28, 36);
const primaryColor = Colors.white;
const canvasColor = Color.fromARGB(255, 46, 49, 145);
const scaffoldBackgroundColor = Colors.white38;
const accentCanvasColor = Color.fromRGBO(98, 114, 94, 1);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
const bodyColor = Colors.black12;
const hoverColor = Color.fromARGB(255, 108, 107, 136);
const double textSize = 30;
const double iconSize = 30;
