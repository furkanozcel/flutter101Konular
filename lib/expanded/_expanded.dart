import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedEgitim extends StatelessWidget {
  const ExpandedEgitim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Liste Başı",
                style: TextStyle(fontSize: 32),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      color: Colors.red,
                      width: double.infinity,
                      height: 100,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        width: double.infinity,
                        height: 100,
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 100,
                    ),
                  ],
                ),
              ),
              const Text(
                "Liste Sonu",
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
        ));
  }
}
