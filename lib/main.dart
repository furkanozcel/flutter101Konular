import 'package:flutter/material.dart';
import 'package:flutter101/dropdownbutton/drop_down_buton.dart';
import 'package:flutter101/ekranlar_arasi_gecis/ana_sayfa.dart';
import 'package:flutter101/ekranlar_arasi_gecis/ikinci_sayfa.dart';
import 'package:flutter101/expanded/_expanded.dart';
import 'package:flutter101/list_view/list_view.dart';
import 'package:flutter101/shered_prefences/a_sayfasi.dart';
import 'package:flutter101/shered_prefences/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ASayfasi(),
    );
  }
}
