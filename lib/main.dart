import 'package:first_project/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  await Supabase.initialize(
      url: "https://fsqoievhwbfpejkegqlb.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZzcW9pZXZod2JmcGVqa2VncWxiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUyNDY2MzMsImV4cCI6MjA4MDgyMjYzM30.zJV9DWFoQdrRoOgY54Nx7xDCsE6q_cx_Fmyo68ITYOQ"
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
