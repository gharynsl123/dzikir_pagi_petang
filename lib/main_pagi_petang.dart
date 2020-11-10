import 'package:flutter/material.dart';
import 'package:project_app_aplikasi_zdikir/view/page_pagi.dart';

class MainOption extends StatefulWidget {
  @override
  _MainOptionState createState() => _MainOptionState();
}

class _MainOptionState extends State<MainOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dzikir Pagi Petang"),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 250),
        child: Container(
          height: MediaQuery.of(context).size.width - 000,
          width: MediaQuery.of(context).size.width - 000,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    elevation: 17,
                    color: Colors.white,
                    splashColor: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => MainPagi()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 10,
                          color: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.wb_sunny,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Dzikir Pagi',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: RaisedButton(
                      elevation: 17,
                      color: Colors.white,
                      splashColor: Colors.lightBlueAccent,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => MainPagi()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Card(
                            elevation: 10,
                            color: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.brightness_2,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Dzikir Petang',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff0758FF),
    );
  }
}
