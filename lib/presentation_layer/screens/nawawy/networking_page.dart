

import 'package:azkary/presentation_layer/screens/nawawy/hadith_model.dart';
import 'package:azkary/presentation_layer/screens/nawawy/network.dart';
import 'package:flutter/material.dart';

class NetworkingPage extends StatelessWidget {

  final HadithModel hadith;
  final String data;
  NetworkingPage( {required this.hadith,required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          NetworkingPageContent(data: data,),
        ],
      ),

    );
  }
}