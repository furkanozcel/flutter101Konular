import 'dart:math';

import 'package:flutter/material.dart';

class DropDownButonEgitim extends StatefulWidget {
  const DropDownButonEgitim({super.key});

  @override
  State<DropDownButonEgitim> createState() => _DropDownButonEgitimState();
}

class _DropDownButonEgitimState extends State<DropDownButonEgitim> {
  final List<String> _sehirler = [
    "İstanbul",
    "Bursa",
    "Ankara",
    "Tekirdağ",
  ];

  String secilenSehir = "İstanbul";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DropdownButton(
              value: secilenSehir,
              items: _sehirler.map((String sehir) {
                return DropdownMenuItem(
                  value: sehir,
                  child: Text(sehir),
                );
              }).toList(),
              onChanged: _sehirDegistir),
        ),
      ),
    );
  }

  void _sehirDegistir(String? yeniSecilenSehir) {
    if (yeniSecilenSehir != null) {
      setState(() {
        secilenSehir = yeniSecilenSehir;
      });
    }
  }
}
