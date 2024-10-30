import 'package:flutter/material.dart';

class IkinciSayfa extends StatelessWidget {
  IkinciSayfa(this.yazi_icerigi, {super.key});
  String yazi_icerigi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("İkinci sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              yazi_icerigi,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Anasayfa Dönüş"),
            ),
          ],
        ),
      ),
    );
  }
}
