import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

const dGreen = Color(0xFF54D3C1);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Booking',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // textTheme : GoogleFonts.nunito(
          //   Theme.of(context).textTheme,
          // )
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Container(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xFF424242),
          size: 20,
        ),
        onPressed: null,
      ),
      title: const Text(
        "Découvrir",
        // style : GoogleFonts.getFont("Nunito", fontSize: 22),
        // style: TextStyle(
        //   fontSize: 22,
        //   fontFamily: 'Lato',
        //   color: Colors.black,
        // ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
