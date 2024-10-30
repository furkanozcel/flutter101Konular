import 'package:flutter/material.dart';
import 'package:flutter101/shered_prefences/karsilama_sayfasi.dart';
import 'package:flutter101/shered_prefences/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ASayfasi extends StatefulWidget {
  const ASayfasi({super.key});

  @override
  State<ASayfasi> createState() => _ASayfasiState();
}

class _ASayfasiState extends State<ASayfasi> {
  String kullanici_adi = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        kullanciAdiKontrol(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("A sayfası"),
      ),
    );
  }

  void kullanciAdiKontrol(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    kullanici_adi = prefs.getString("kullaniciAdi") ?? "";

    if (kullanici_adi.isEmpty) {
      loginSayfasiniAc(context);
    } else {
      karsilamaSayfasiniAc(context);
    }
  }

  void loginSayfasiniAc(BuildContext context) {
    sayfaAc(context, LoginPage());
  }

  void karsilamaSayfasiniAc(BuildContext context) {
    sayfaAc(context, KarsilamaSayfasi(kullanici_adi));
  }

  void sayfaAc(BuildContext context, Widget sayfa) {
    MaterialPageRoute sayfayolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return sayfa;
      },
    );
    Navigator.push(context, sayfayolu);
  }
}
