import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_app_aplikasi_zdikir/barview/home_bar.dart';
import 'package:project_app_aplikasi_zdikir/datalist/doa_harian.dart';
import 'package:project_app_aplikasi_zdikir/main_pagi_petang.dart';

class homView extends StatefulWidget {
  @override
  _homViewState createState() => _homViewState();
}

class _homViewState extends State<homView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barHome(),
      body: tombolDoa(),
    );
  }
}

class tombolDoa extends StatefulWidget {
  @override
  _tombolDoaState createState() => _tombolDoaState();
}

class _tombolDoaState extends State<tombolDoa> {
  @override
  Widget build(BuildContext context) {
    return Column(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width - 180,
            width: MediaQuery.of(context).size.width - 000,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0.0, 2.0),
                      color: Colors.black26)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://get.pxhere.com/photo/landscape-horizon-cloud-sky-sun-sunrise-sunset-skyline-night-morning-dawn-city-atmosphere-dusk-daytime-evening-calm-afternoon-afterglow-meteorological-phenomenon-atmosphere-of-earth-red-sky-at-morning-1373528.jpg'))),
            child: Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "JANGAN LUPA UNTUK BERBUAT BAIK SOBAT\n\nMembaca Doa sangat penting. Karena dengan kita memabaca Doa Doa maupun itu Doa Sehari hari atau Doa yang lainnya itu sangat lah berguna bagi kita untuk kita bisa lebih medekat kepada allah dan terhindar dari segala godaan Setan.",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25 , left: 15, right: 15, bottom: 15),
            child: Column(
               children: <Widget>[
                 RaisedButton(
                   elevation: 17,
                   color: Colors.white,
                   splashColor: Colors.blueAccent,
                   padding: EdgeInsets.symmetric(vertical: 15),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                   onPressed: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder: (context) => DoaHarian()));
                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       SizedBox(
                         width: 10,
                       ),
                       Card(
                         elevation: 10,
                         color: Colors.blueAccent,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(35.0),
                         ),
                         child: SizedBox(
                           width: 40,
                           height: 40,
                           child: Icon(
                             Icons.account_balance_wallet,
                             color: Colors.white,
                             size: 28,
                           ),
                         ),
                       ),
                       SizedBox(
                         width: 15,
                       ),
                       Text(
                         'Doa Harian',
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
                     splashColor: Colors.blueAccent,
                     padding: EdgeInsets.symmetric(vertical: 15),
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18.0)),
                     onPressed: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => MainOption()));
                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         SizedBox(
                           width: 10,
                         ),
                         Card(
                           elevation: 10,
                           color: Colors.blueAccent,
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
                           'Dzikir Pagi Petang',
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
        ]);
  }
}
