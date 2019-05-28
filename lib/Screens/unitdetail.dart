import 'package:flutter/material.dart';


class UnitDetail extends StatefulWidget {
  String appBarTitle;
  UnitDetail(this.appBarTitle);
  @override
  State<StatefulWidget> createState() => UnitDetailState(appBarTitle);
}



class UnitDetailState extends State<UnitDetail> {
  String appBarTitle;

  TextEditingController input = TextEditingController();
  TextEditingController output = TextEditingController();

  UnitDetailState(this.appBarTitle);
  String _selFrom = "Kilogram";
  String _selTo = "Gram";
  List<String> _units = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setUnits(appBarTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          Text("Convert from :"),
          SizedBox(height:2.0),
          Expanded(
            child: DropdownButton(
              value: _selFrom,
              items: _units.map((String value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }),
              onChanged: (String value){
                setState(() {
                  _selFrom = value;
                });
              },
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: input,
            decoration: InputDecoration(
              labelText: 'Input',
              hintText: 'Enter input here',
            ),
            onSubmitted: _calculate(),
          ),
          SizedBox(height: 4.0),
          Text("Convert to :"),
          SizedBox(height:2.0),
          DropdownButton(
            value: _selTo,
            items: _units.map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text('value'),
              );
            }),
            onChanged: (String value) {
              setState(() {
                _selTo = value;
              });
            }
          ),
          SizedBox(height:2.0),
          TextField(
            keyboardType: TextInputType.number,
            controller: output,
            decoration: InputDecoration(
              labelText: 'Output',
              hintText: 'See output here',
            ),
          ),
        ],
      ),
    );
  }

void  _setUnits(String value) {
    switch(value) {
      case 'Mass':
        _units = ["Kilogram","gram"];
        break;
      case 'Volume':
        _units = ["Metre^3","Centimeter^3","Millimeter^3"];
        break;
      case 'Time':
        _units = ["Hours","Minutes","Seconds"];
    }
  }

   _calculate() {
    //TODO: IMPLEMENT CALCULATE

  }
}