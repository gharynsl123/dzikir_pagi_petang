import 'package:flutter/material.dart';
import 'package:project_app_aplikasi_zdikir/barview/home_bar.dart';
import 'package:project_app_aplikasi_zdikir/datalist/doa_harian.dart';
import 'package:project_app_aplikasi_zdikir/view.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homView(),
      backgroundColor: Color(0xffF3F3F3),
    );
  }
}
