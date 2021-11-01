import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          const Positioned(
            top: 70,
            left: 40,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
          ),
          const Positioned(
            top: 70,
            right: 40,
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 35,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Sunny Mac",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "me@sunny.in",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    height: 50,
                    width: 500,
                    child: Center(
                      child: Text(
                        "Upgrade Your Plan!",
                        style: GoogleFonts.lato(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    icon: Icons.shopping_bag_outlined,
                    text: "Your Order History",
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    icon: Icons.help,
                    text: "Help and Support",
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    icon: Icons.card_giftcard,
                    text: "Refer and Earn",
                    arrowShown: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ProfileMenuItem(
                    icon: Icons.logout,
                    text: "Logout",
                    arrowShown: false,
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

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool arrowShown;
  const ProfileMenuItem({
    Key? key,
    required this.arrowShown,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        height: 50,
        width: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 10),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Text(
                  text,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            arrowShown
                ? const Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.white,
                    ),
                  )
                : Container()
          ],
        ));
  }
}
