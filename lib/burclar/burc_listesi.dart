
import 'package:flutter/material.dart';
import 'package:mobilprogramlama/acıklama/strings.dart';
import 'package:mobilprogramlama/burclar/burc.dart';

class BurclarListesi extends StatelessWidget {
  static List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = verileriAl();
    return Scaffold(
      appBar: AppBar(
        title: Text("BURÇLAR"),
      ),
      body: listeYaratici(),
    );
  }

  List<Burc> verileriAl() {
    List<Burc> gecici = [];

    for (int m = 0; m < 12; m++) {



      gecici.add(Burc(
          Strings.BURC_ADLARI[m],
          Strings.BURC_TARIHLERI[m],
          Strings.BURC_GENEL_OZELLIKLERI[m],
         ));
    }
    return gecici;
  }

  Widget listeYaratici() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return satirDuzeni(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  Widget satirDuzeni(BuildContext context, indeks) {
    Burc oAnkiElelman = tumBurclar[indeks];
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: ()=> Navigator.pushNamed(context, "/detayBurc/$indeks"),
        title: Text(oAnkiElelman.Adi),
        subtitle: Text(oAnkiElelman.Tarihi),


      ),
    );
  }
}
