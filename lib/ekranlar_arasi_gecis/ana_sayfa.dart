import 'package:flutter/material.dart';
import 'package:flutter101/ekranlar_arasi_gecis/ikinci_sayfa.dart';

class AnaSayfa extends StatelessWidget {
  AnaSayfa({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 45,
              child: TextField(
                controller: controller,
                cursorHeight: 15,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.message),
                  prefixIconColor: Colors.purple,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _ikinciSayfaAc(context);
              },
              child: const Text("İkinci sayfaya geç"),
            ),
          ],
        ),
      ),
    );
  }

  void _ikinciSayfaAc(BuildContext context) {
    MaterialPageRoute sayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return IkinciSayfa(controller.text);
      },
    );
    Navigator.push(context, sayfaYolu);
  }
}
