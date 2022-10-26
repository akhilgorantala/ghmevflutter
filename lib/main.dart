import 'dart:html';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ghmevflutter/cart.dart';
import 'package:ghmevflutter/responser.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:video_player/video_player.dart';

import 'animatedbutton.dart';
import 'animatedcontainer.dart';
import 'explorebutton.dart';
import 'mobileview/mobile_home.dart';
import 'mobileview/mobilecart.dart';
import 'mobileview/responsecart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
      
        primarySwatch: Colors.blue,
      ),
      // home: Responser(),
      // home: mobile_Cart(),
      home: Responser_cart(),
      // home: cart_Cart(),
      // home: Mobile_Homescreen(),
      // home: MyWidget(),
    );
  }
}




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  bool hover_brake=false;
  bool hover_shock=false;
  bool hover_battery=false;
  bool hover_peddel=false;
  bool hover_disc=false;
bool hover_tyre=false;

    late VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    backgroundColor: Colors.black,

    body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
    
    
    
    
    
    
    
    Opacity(
      opacity: 1,
      child:   Container(
        width: MediaQuery.of(context).size.width,

        height: MediaQuery.of(context).size.height,
          // color: Colors.pink,
          child: VideoPlayer(_controller),
          // color: Colors.pink,
          // child: Text(MediaQuery.of(context).size.width.toString()),
      ),
    ),
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
              Column(children: [
    
    
    /// appbar 
    
    MediaQuery.of(context).size.width>1049?
    
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child:   Container(
              height: 70,
              // color: Colors.red,
              child: Row(children: [
      Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child:   Container(
                height: 70,
                width: 130,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/ghmhomelogo.png"))
                ),
              ),
      ),
      
      
      
      Expanded(
      
      
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 100,),
      
                Text("MODEL-L",style: TextStyle(
      color: Colors.white,fontSize: 17,
      fontWeight: FontWeight.w600
      
      ),),
      
      
      Text("MODEL-I",style: TextStyle(
      color: Colors.white,fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5
      
      ),),
      
      
      Text("MODEL-F",style: TextStyle(
      color: Colors.white,fontSize: 17,
      fontWeight: FontWeight.w600,
              letterSpacing: 1.5
      
      ),),
      
      Text("MODEL-E",style: TextStyle(
      color: Colors.white,fontSize: 17,
      fontWeight: FontWeight.w600,
              letterSpacing: 1.5
      
      ),)
              ]),
      ),
      
      Container(
              width: 450,
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
              
                Text("About",style: TextStyle(
              color: Colors.white,fontSize: 17,
              fontWeight: FontWeight.w600,
                letterSpacing: 1.5
              
              ),),
              SizedBox(width: 30,
              ),
              
              Row(
                children: [
                  Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){


// Navigator.push(context, MaterialPageRoute(builder: (context)=>cart_Cart()));    
Navigator.push(context, MaterialPageRoute(builder: (context)=>Responser_cart()));    
                  

                    },
                    child: MouseRegion(
                      onHover: (eve){
                        print("hover detected by");
                      },
                      cursor: SystemMouseCursors.click,
                      
                      child: Text("Cart",style: TextStyle(
                      color: Colors.white,fontSize: 17,
                      fontWeight: FontWeight.w600,
                        letterSpacing: 1.5
                      
                      ),),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30,
              ),
              
              ],),
      )
      
      
      
      
              ]),
      
      
      
      
      ),
    ):Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child:   Container(
              height: 70,
              // color: Colors.red,
              child: Row(children: [
      Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child:   Container(
                height: 70,
                width: 130,
                // color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/ghmhomelogo.png"))
                ),
              ),
      ),
     
    
      
      
      
              ]),
      
      
      
      
      ),
    ),
    
    //// VIDEO SCREEN 
    ///
    ///
    
    
    
    
    Container(
      height: MediaQuery.of(context).size.height,
      child:   Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 0, 130),
          child: Container(
            // width: 900,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          
                   Text("Experience the",style: GoogleFonts.poppins(
                // color: Colors.white,
                fontSize: 43,
                letterSpacing: 3.8,
                foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.white,
           ),textAlign: TextAlign.left),
          
          
          
          Text("True power of",style: GoogleFonts.poppins(
                // color: Colors.white,
                color :CupertinoColors.activeGreen,
                fontSize: 43,
       letterSpacing: 3.8,
                fontWeight: FontWeight.w600
                
                // foreground: Paint()
                //         ..style = PaintingStyle.stroke
                //         ..strokeWidth = 2
                //         ..color = CupertinoColors.activeGreen,
           ),textAlign: TextAlign.left,
           
           ),
          
          
                Text("Electric Bikes",style: GoogleFonts.poppins(
                // color: Colors.white,
                fontSize: 43,
      letterSpacing: 3.8,
                
                foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.white,
           ),textAlign: TextAlign.left,),
    
    // SizedBox(height: 20,),
          //  AnimatedButton(text: "Explore", onPress: (){})
    
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Container(
    decoration: BoxDecoration(
              color: CupertinoColors.systemGreen,
    borderRadius: BorderRadius.circular(990)
    ),      
              child: Padding(
                padding:EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Text("Explore",style: TextStyle(fontSize: 21,letterSpacing: 2.0,
                
                   foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.5
                        ..color = Colors.white,
                
                ),),
              ),
            ),
          ),
    
                         
                ],),
              ],
            ),
          ),
      ),
    ),
    
    
    
    
    
    
    
    // ShapeScreen(),
    
    
    
    
    
    
    
    
    Container(
      // color: Colors.white,
      // height: M,
      // width: MediaQuery.of(context).size.width,
      height: 600,

      child: Stack(
        children: [
          
          Align(
            alignment: Alignment(0,0),
            child: SvgPicture.asset("assets/scam.svg")),

          Center(child: Container(

            height: 600,
            child: Stack(
              children: [


                
                Container(
                  height: 600,
                  child: Image.asset("assets/hero.png")),

                 




hover_brake?Positioned(
  top: 360,
  left: 600,
  
  child: SvgPicture.asset("assets/mechanicaldisc.svg")):SizedBox(),




hover_shock?Positioned(
  top: 230,
  left: 530,
  
  child: SvgPicture.asset("assets/suspension_hover.svg")):SizedBox(),



hover_peddel?Positioned(
  top: 360,
  left: 370,
  
  child: SvgPicture.asset("assets/hover_peddel.svg")):SizedBox(),




hover_tyre?Positioned(
  top: 250,
  left: 230,
  
  child: SvgPicture.asset("assets/type_hover.svg")):SizedBox(),



hover_disc?Positioned(
  top: 360,
  left: 220,
  
  child: SvgPicture.asset("assets/gearrrrr.svg")):SizedBox(),

///   
/// 

// assets/hover_peddel







/// brake 
                  Positioned(
  top: 370,
  left: 588,
  child: MouseRegion(
    onHover: (ajkbgdfjkabn){
  
  setState(() {
    hover_battery=false;
        hover_brake=true;
        hover_disc=false;
        hover_peddel=false;
        hover_shock=false;
        hover_tyre=false;

  });



    },
    child: Container(
      height: 30,
      width: 30,
      child: hover_brake?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")
        
        ),
  )),




// Positioned(
//   top: 240,
//   left: 430,
//   child: InkWell(
//      onTap:(){},
//     onHover: (d){
//       print("hover");
//       setState(() {
//         hover_bb=d;

//       });
//     },
    
//     child: Container(
//       height: 30,
//       width: 30,
//       child: hover_bb?Text("22"):Text("2224")),
//   )),



    Positioned(
  top: 240,
  left: 430,
  child: MouseRegion(
    onHover: (ww){

      setState(() {
        hover_battery=true;
        hover_brake=false;
        hover_disc=false;
        hover_peddel=false;
        hover_shock=false;
        hover_tyre=false;
      });
    },
    child: Container(
      height: 30,
      width: 30,
         child: hover_battery?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")
),
  )),



    Positioned(
  top: 260,
  left: 230,
  child: MouseRegion(
    onHover: (cc){
        setState(() {
           hover_battery=false;
        hover_brake=false;
        hover_disc=false;
        hover_peddel=false;
        hover_shock=false;
        hover_tyre=true;
        });
    },
    child: Container(
      height: 30,
      width: 30,
      child: hover_tyre?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")
      
      ),
  )),



    Positioned(
  top: 360,
  left: 230,
  child: MouseRegion(
    onHover: (srswr){
         setState(() {
           hover_battery=false;
        hover_brake=false;
        hover_disc=true;
        hover_peddel=false;
        hover_shock=false;
        hover_tyre=false;
        
        });
    },
    child: Container(
      height: 30,
      width: 30,
      child:hover_disc?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")),
  )),



    Positioned(
  top: 240,
  left: 534,
  child: MouseRegion(
    onHover: (dseqw){
setState(() {
     hover_battery=false;
        hover_brake=false;
        hover_disc=false;
        hover_peddel=false;
        hover_shock=true;
        hover_tyre=false;
});
      
    },
    child: Container(
      height: 30,
      width: 30,
      child: hover_shock?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")),
  )),



    Positioned(
  top: 360,
  left: 370,
  child: MouseRegion(
    onHover: (akjfb){
      setState(() {
        hover_battery=false;
        hover_brake=false;
        hover_disc=false;
        hover_peddel=true;
        hover_shock=false;
        hover_tyre=false;
      });
        
    },
    child: Container(
      height: 30,
      width: 30,
      child: hover_peddel?SvgPicture.asset("assets/selected.svg"):SvgPicture.asset("assets/point_un.svg")),
  )),
                  
              ],
            ))
            
            
            )
        ],
      )),




      
    
    Stack(
      alignment: Alignment.center,
      children: [
        
         Container(
        height: 490,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("assets/madeforearth.png",fit: BoxFit.fill,)),
         Align(
          alignment: Alignment.center,
          
          
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 00, 0),
            child: SvgPicture.asset("assets/ttpp.svg",height: 290,),
          )),
      ],
    ),


    Container(

      
width: MediaQuery.of(context).size.width,
height: 700,
      color: Color(0xff141414),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



Padding(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
  child:   Center(child: SvgPicture.asset("assets/ffts.svg",height: 85,)),
),







Padding(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  
  Container(
    height: 340,
    // color: Colors.red,
    width: 250,
     decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/hl___l.png"))
    ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
          SvgPicture.asset("assets/light1.svg"),
    ],
  ),
    
  ),
  
  SizedBox(width: 26,),
  
  
  Container(
    height: 340,
    // color: Colors.red,
    width: 250,
     decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/hl___t.png"))
    ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
          SvgPicture.asset("assets/light2.svg"),
    ],
  ),
   
  ),
  
  SizedBox(width: 26,),
  
  
  
  Container(
    height: 340,
    // color: Colors.red,
    width: 250,
  
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/hl___ty.png"))
    ),
  
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset("assets/light3.svg"),
      ],
    ),
  ),
  
  
  
  
  
  
  
  
  ],),
),










        ]),
      ),
    )
    
    



    
    
    
    
    
    
    
    
    
    
    
    
              ]),
            ],
          ),


// Container(
//   width: MediaQuery.of(context).size.width,
//   height: 670,
//   child: Image.asset("assets/rks.png",fit: BoxFit.fill,))








        ],
      ),
    ),
      
    );
  
  
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = VideoPlayerController.network(
    
      
        'https://ghmev.com/static/media/ghm-trailer.066241a8264eae19b3a0.mp4')..setLooping(true)
      ..initialize().then((value) {
_controller.setVolume(0.0);


_controller.play();

// _controller.setVolume(1.0);
       
      });
  }
}