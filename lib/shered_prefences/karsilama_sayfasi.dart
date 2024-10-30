import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KarsilamaSayfasi extends StatelessWidget {
  KarsilamaSayfasi(this.kullanci_adi, {super.key});
  String kullanci_adi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Karşılama sayfası"),
      ),
      body: Center(
        child: Text(
          "Hoşgeldin $kullanci_adi",
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
