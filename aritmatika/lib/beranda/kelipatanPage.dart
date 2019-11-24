import 'package:flutter/material.dart';

class BagiPage extends StatefulWidget {
  @override
  _BagiPageState createState() => new _BagiPageState();
}

class _BagiPageState extends State<BagiPage> {
  TextEditingController controllerAngka = new TextEditingController();

  void kirimdata(){

    int angka1 = int.parse(controllerAngka.text);
    var angkahasil ="";
    List hasil = ["", "", "", "", "", "", "", "", "", ""];

    for (var i = 1; i < 10; i++) {
      angka1 = angka1 * i;
      angkahasil = angka1.toString();
      hasil[i] = angkahasil;
    }

    AlertDialog alertDialog = new AlertDialog(
      title: new Text("Bilangan Kelipatan dari ${controllerAngka.text}"),
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
        title: new Text("Bagi"),
        backgroundColor: Colors.teal,
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
                    borderRadius: new BorderRadius.circular(20.0)
                  )
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0),),
              new RaisedButton(
                child: new Text("Proses", style: new TextStyle(fontSize: 20.0, color: Colors.white),),
                color: Colors.red,
                onPressed: (){kirimdata();},
              )
            ],
          )),
    );
  }
}
