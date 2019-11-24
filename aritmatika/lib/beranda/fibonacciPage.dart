import 'package:flutter/material.dart';

class TambahPage extends StatefulWidget {
  @override
  _TambahPageState createState() => new _TambahPageState();
}

class _TambahPageState extends State<TambahPage> {
  //TextEditingController
  TextEditingController controllerAngkaPertama = new TextEditingController();
  TextEditingController controllerAngkaKedua = new TextEditingController();

  // List hasil = ["10", "11"];

  void kirimdata() {
    int angka1 = int.parse(controllerAngkaPertama.text);
    int angka2 = int.parse(controllerAngkaKedua.text);
    int angka3;
    var angkahasil ="";
    List hasil = ["", "", "", "", "", "", "", "", "", ""];

    for (var i = 0; i < 10; i++) {
      angka3 = angka1 + angka2;
      angka1 = angka2;
      angka2 = angka3;
      angkahasil = angka3.toString();
      hasil[i] = angkahasil;
    }

    AlertDialog alertDialog = new AlertDialog(
      title: new Text("Bilangan Fibonacci dari ${controllerAngkaPertama.text} + ${controllerAngkaKedua.text}"),
      content: new Container(
          height: 200.0,
          width: 100.0,
          child: new ListView.builder(
              itemCount: hasil.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return new Text(hasil[index]!=null?hasil[index]:'Default Value');
              })),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Fibonacci"),
        backgroundColor: Colors.amber,
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new TextField(
              controller: controllerAngkaPertama,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Masukan Angka Pertama",
                  labelText: "Angka Pertama",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new TextField(
              controller: controllerAngkaKedua,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Masukan Angka Kedua",
                  labelText: "Angka Kedua",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            new Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            new RaisedButton(
              child: new Text(
                "Proses",
                style: new TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                kirimdata();
              },
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            // new Container(
            //     height: 200.0,
            //     child: new ListView.builder(
            //         itemCount: hasil.length,
            //         itemBuilder: (BuildContext ctxt, int index) {
            //           return new Text(hasil[index]);
            //         }))
          ],
        ),
      ),
    );
  }
}
