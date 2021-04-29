import 'package:flutter/material.dart';
import 'burclar/burc_detay.dart';
import 'burclar/burc_listesi.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burc Uygulaması",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {"/": (context) => BurclarListesi()},
      onGenerateRoute: (RouteSettings settings) {
        List<String> yollar = settings.name
            .split("/");

        if (yollar[1] == "detayBurc") {
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(yollar[2])));
        }
        return null ;
      },
    );
  }
}