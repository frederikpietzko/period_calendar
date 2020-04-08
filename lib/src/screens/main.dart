import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/calendar.dart';
import '../controllers/calendar_bloc.dart';

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var radius = size.width * 0.03;
    return Provider(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Periodenkalender"),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 150),
            child: Header(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Calendar(),
            ],
          ),
        ),
      ),
    );
  }
}
