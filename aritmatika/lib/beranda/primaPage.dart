import 'package:flutter/material.dart';

class FaktorPage extends StatefulWidget {
  @override
  _FaktorPageState createState() => new _FaktorPageState();
}

class _FaktorPageState extends State<FaktorPage> {
  TextEditingController controllerAngka = new TextEditingController();

  void kirimdata() {
    int angka1 = int.parse(controllerAngka.text);
    var kalimat = "Merupakan Bilangan Prima";
    int prima ;

    for (var i = 2; i <= angka1 / 2; i++) {
      prima = angka1 % i;
      if (prima == 0) {
        kalimat = "Bukan Merupakan Bilangan Prima";
      }
    }

    AlertDialog alertDialog = new AlertDialog(
      title: new Text("Angka ${controllerAngka.text}"),
      content: new Container(
          height: 50.0, width: 100.0, child: new Text("$kalimat")),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Prima"),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
          padding: EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              new TextField(
                controller: controllerAngka,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Masukan Angka",
                    labelText: "Angka",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0))),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 10.0),
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
              )
            ],
          )),
    );
  }
}
