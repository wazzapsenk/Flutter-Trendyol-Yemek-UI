import 'package:flutter/material.dart';
import 'package:trendyol_yemek_ui/screen_views/kesfet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Trendyol Yemek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home: const KesfetSayfa(),
    );
  }
}
