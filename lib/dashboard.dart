

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('SARDJITO'),
        ),
        elevation: 2,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding : EdgeInsets.symmetric(vertical : 20.0, horizontal : 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget> [
            makeDashboardItem('Cari', Icons.book),
            makeDashboardItem('Cari', Icons.alarm),
            makeDashboardItem('Cari', Icons.bookmark),
            makeDashboardItem('Cari', Icons.book),
            makeDashboardItem('Cari', Icons.alarm),
            makeDashboardItem('Cari', Icons.bookmark),

          ],
        ),
      ),
      
    );
  }

  Card makeDashboardItem(String title, IconData icon){
  return Card(
    elevation: 1.0,
    margin: EdgeInsets.all(18.0),
    child: Container(
      decoration: BoxDecoration(color : Color.fromRGBO(220, 220, 220, 1.0)),
      child: InkWell(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(height: 50.0,),
            Center(
              child: Icon(
                icon,
                size: 40.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0,),
            Center(
              child: Text(title,
              style: TextStyle(fontSize: 18.0, color: Colors.black),),
            )
          ],
        ),

      ),
    ),
  );
}
}