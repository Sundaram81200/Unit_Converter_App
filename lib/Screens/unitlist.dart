import 'package:flutter/material.dart';
import 'package:unit_converter/Screens/unitdetail.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Unit Converter'),
    ),
    body: Container(
      child: ListView(
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          _buildListItem('Mass',context),
          _buildListItem('Volume',context),
          _buildListItem('Time',context)
        ],
      )
    ),
    );
  }


  _buildListItem(String name,BuildContext context) {
    return Flexible(
      flex: 1,
      child: ListTile(
        leading: Icon(Icons.bubble_chart),
        title: Text(name),
        onTap: () {
          //open the detail screen
          _navigateToDetail(name,context);
        }
      ),
    );
  }

  _navigateToDetail(String headValue,BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => UnitDetail(headValue)));
  }

}