import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:management_form/feature/form/pages/form_screen.dart';
import 'package:management_form/feature/management_profile/pages/management_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const ManagementProfile(),
    );
  }
}
