import 'package:first_project/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  await Supabase.initialize(
      url: "https://fmjsogrxzltfuszwodjt.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZtanNvZ3J4emx0ZnVzendvZGp0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ2NDE2MzUsImV4cCI6MjA4MDIxNzYzNX0.nTnNhK6_R2Ua51GSnMt_KDhpg9NAB0N_3CC3LLkZADQ"
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
