import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  Widget build(context){
    return Column(children: <Widget>[
      ListTile(
        title: buildContainer(),
        subtitle: buildContainer(),
      ),
      Divider(height: 8.0,)
    ],);
  }
  Widget buildContainer() {
    return Container(
      color: Colors.grey[200],
      height: 24.0,
      width: 150.0,);
  }
}