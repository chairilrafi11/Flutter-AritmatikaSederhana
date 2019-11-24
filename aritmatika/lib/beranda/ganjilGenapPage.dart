import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  TextEditingController controllerAngka = new TextEditingController();

  void kirimdata(){

    String textHasil = "";

    if (int.parse(controllerAngka.text) %2 == 0) {
      textHasil = "Genap";
    } else {
      textHasil = "Ganjil";
    }

    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 20.0,
        child: new Column(
          children: <Widget>[
            new Text("Angka ${controllerAngka.text} adalah ${textHasil} ")
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Ganjil genap"),
        backgroundColor: Colors.indigoAccent,
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
