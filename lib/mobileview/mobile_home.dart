import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class Mobile_Homescreen extends StatefulWidget {
  const Mobile_Homescreen({super.key});

  @override
  State<Mobile_Homescreen> createState() => _Mobile_HomescreenState();
}

class _Mobile_HomescreenState extends State<Mobile_Homescreen> {
  
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
          child: Container(
            
            
            child: VideoPlayer(_controller)),
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
                  Text("Cart",style: TextStyle(
                  color: Colors.white,fontSize: 17,
                  fontWeight: FontWeight.w600,
                    letterSpacing: 1.5
                  
                  ),),
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
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:   Container(
        // width: 900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
       ),textAlign: TextAlign.center),
      
      
      
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
       ),textAlign: TextAlign.center,
       
       ),
      
      
            Text("Electric Bikes",style: GoogleFonts.poppins(
            // color: Colors.white,
            fontSize: 43,
      letterSpacing: 3.8,
            
            foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.white,
       ),textAlign: TextAlign.center,),
    
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
    
    
    
    
    
    
    
    // ShapeScreen(),
    
    
    
    
    
    
    
    
    Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        // color: Colors.white,
        // height: M,
        // width: MediaQuery.of(context).size.width,
        height: 200,

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
  child: GestureDetector(
      onTap: (){
  
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
  child: GestureDetector(
      onTap: (){

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
  child: GestureDetector(
      onTap: (){
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
  child: GestureDetector(
      onTap: (){
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
  child: GestureDetector(
      onTap: (){
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
  child: GestureDetector(
      onTap: (){
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
    ),




      
    
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 00),
      child: Stack(
        alignment: Alignment.center,
        children: [
          
           Container(
          height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/madeforearth.png",fit: BoxFit.fill,)),
           Align(
            alignment: Alignment.center,
            
            
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 00, 0),
              child: SvgPicture.asset("assets/ttpp.svg",height: 100,),
            )),
        ],
      ),
    ),


    Container(

      
width: MediaQuery.of(context).size.width,
// height: 700,
      color: Color(0xff141414),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [



Padding(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
  child:   Center(child: SvgPicture.asset("assets/ffts.svg",height: 45,)),
),







Padding(
  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
  child:   Column(
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
//   height:340,
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