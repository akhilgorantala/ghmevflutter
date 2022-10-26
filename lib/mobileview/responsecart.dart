import 'package:flutter/material.dart';
import 'package:ghmevflutter/cart.dart';
import 'package:ghmevflutter/mobileview/mobilecart.dart';

// import 'main.dart';
// import 'mobileview/mobile_home.dart';


class Responser_cart extends StatefulWidget {
  const Responser_cart({super.key});

  @override
  State<Responser_cart> createState() => _Responser_cartState();
}

class _Responser_cartState extends State<Responser_cart> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>=1049){
      return cart_Cart();
    }
    else{
      return mobile_Cart();
    }
  }
}