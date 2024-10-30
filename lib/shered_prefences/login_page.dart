import 'package:flutter/material.dart';
import 'package:flutter101/shered_prefences/karsilama_sayfasi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController controllerKA = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            child: TextField(
              controller: controllerKA,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              girisYap(context);
            },
            child: const Text(
              "Giriş Yap",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }

  void girisYap(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("kullaniciAdi", controllerKA.text);

    KarsilamasayfasiAc(context);
  }

  void KarsilamasayfasiAc(BuildContext context) {
    MaterialPageRoute sayfayolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return KarsilamaSayfasi(controllerKA.text);
      },
    );
    Navigator.push(context, sayfayolu);
  }
}
