import 'package:flutter/material.dart';

import 'main.dart';
import 'mobileview/mobile_home.dart';


class Responser extends StatefulWidget {
  const Responser({super.key});

  @override
  State<Responser> createState() => _ResponserState();
}

class _ResponserState extends State<Responser> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=1049){
      return HomePage();
    }
    else{
      return Mobile_Homescreen();
    }
  }
}