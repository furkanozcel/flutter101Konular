import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter101/list_view/sehirler.dart';

class List_View extends StatelessWidget {
  List_View({super.key});

  List<Sehir> sehirler = [
    Sehir("İstanbul", 34, 20.000000),
    Sehir("Bursa", 16, 4.000000),
    Sehir("Ankara", 06, 5.800000),
    Sehir("Eskişehir", 26, 789.023),
    Sehir("İstanbul", 34, 20.000000),
    Sehir("Bursa", 16, 4.000000),
    Sehir("Ankara", 06, 5.800000),
    Sehir("Eskişehir", 26, 789.023),
    Sehir("İstanbul", 34, 20.000000),
    Sehir("Bursa", 16, 4.000000),
    Sehir("Ankara", 06, 5.800000),
    Sehir("Eskişehir", 26, 789.023),
    Sehir("İstanbul", 34, 20.000000),
    Sehir("Bursa", 16, 4.000000),
    Sehir("Ankara", 06, 5.800000),
    Sehir("Eskişehir", 26, 789.023)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sehirler.length,
        itemBuilder: liste_ogesini_olustur,
      ),
    );
  }

  Widget liste_ogesini_olustur(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(sehirler[index].isim),
        subtitle: Text(sehirler[index].nufus.toString()),
        trailing: Text(sehirler[index].plakaKodu.toString()),
        leading: const Icon(Icons.location_city),
      ),
    );
  }
}
