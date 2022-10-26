import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:html' as html;
import 'dart:js'as js;

class cart_Cart extends StatefulWidget {
  const cart_Cart({super.key});

  @override
  State<cart_Cart> createState() => _cart_CartState();
}

class _cart_CartState extends State<cart_Cart> {
  // final _apiService = ApiService();
  final _timerDuration = const Duration(seconds: 1);
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(
  // color: Colors.green,
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  child:   Row(

    mainAxisAlignment:MainAxisAlignment.spaceAround,
    
    children: [
  
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Container(
          height: 700,
         
          child: SvgPicture.asset("assets/textsms.svg")),
      ),


      Padding(
        padding: const EdgeInsets.fromLTRB(80, 190, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

        // Figma Flutter Generator OrderreviewWidget - TEXT
        Text('Order Review', textAlign: TextAlign.left, style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600
        )  ,),


        Text('2 items in cart', textAlign: TextAlign.left, style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          
        )  ),


        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // color: Colors.green,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/F8.png",),fit: BoxFit.fill)
                  ),
                  height: 120,
                  width: 200,

                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
      // Figma Flutter Generator 5inclusivegstWidget - TEXT
      Text('(5% inclusive GST)', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(19, 19, 19, 1),
        fontFamily: 'Montserrat',
        fontSize: 14,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),),


            // Figma Flutter Generator MfemodelfphoenixWidget - TEXT
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Text('MFE-MODEL F (Phoenix)', textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(19, 19, 19, 1),
          fontFamily: 'Montserrat',
          fontSize: 17.229450225830078,
          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
          fontWeight: FontWeight.w600,
          height: 1
        ),),
      ),


            // Figma Flutter Generator 33999Widget - TEXT
      Text('₹ 33,999', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(19, 19, 19, 1),
        fontFamily: 'Montserrat',
        fontSize: 21,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.w600,
        height: 1,
        
      ),),



            // Figma Flutter Generator Mrp41999Widget - TEXT
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 00, 0),
            child: Text('MRP:   ₹ 41,999', textAlign: TextAlign.left, style: TextStyle(
              color: Color(0xff131313),
              fontFamily: 'Montserrat',
              fontSize: 13.253424644470215,
              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.lineThrough,
              
              height: 1
            ),),
          ),


          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: CircleAvatar(
              backgroundColor: Color(0xffD9D9D9),
              radius: 14,
              child: Icon(Icons.remove,color: Colors.black,),
            ),
          ),
          
Padding(
  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
  child:   Text("1",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
),

           CircleAvatar(
            backgroundColor: Color(0xffD9D9D9),
            radius: 14,
               child: Icon(Icons.add,color: Colors.black,),
          )
        ],
      )

                  ],),
                )
              ],
            ),
  height: 150,
  width: 450,
  // color: Colors.amber,
  decoration: BoxDecoration(

     border: Border(
            // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
            bottom: BorderSide(width: 3.0, color: Color(0xffE0E0E0)),
          ),
    // border: Border.
  ),
),
        ),






        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Container(
            width: 450,
             
            height: 60,
            decoration: BoxDecoration(
            color: Color(0xffFFD566),

borderRadius: BorderRadius.circular(12),

            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                

Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  child:   Row(children: [
    Icon(Icons.shopping_cart_outlined,color: Color(0xff005422),),
  
        // Figma Flutter Generator TotalWidget - TEXT
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Text('TOTAL', textAlign: TextAlign.left, style: TextStyle(
            color: Color.fromRGBO(0, 84, 34, 1),
            fontFamily: 'Montserrat',
            fontSize: 20,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.w600,
            height: 1
          ),),
        ),
  ],),
),

      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 26, 0),
        child: Text("₹ 33,999",style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.w600),),
      ),


            ]),
          ),
        ),


       

       Padding(
         padding: const EdgeInsets.fromLTRB(0, 10, 00, 0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.info_outline,color: Color(0xff393C3A),),
          SizedBox(width: 6,),

           Text("Also can choose ",style: TextStyle(
            color: Color(0xff393C3A)
          ),),

 Text("EMI",style: TextStyle(
            color: Color(0xff47AB6A)
          ),),


           Text(" while payment",style: TextStyle(
            color: Color(0xff393C3A)
          ),)
         ],),
       ),






        ],),
      ),



Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  child:   Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 190, 0, 0),
        child: Container(
          height: 50,
          // color: Colors.amber,
          width: 450,
          child: Center(child: Text("ADD DETAILS TO CHECKOUT",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)),
        ),
      ),

Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(

    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "Full Name",
          border: InputBorder.none,
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
    width: 350,
  ),
),


Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,


                hintText: "Email",
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
   width: 350,
  ),
),


Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
              hintText: "Address",
          border: InputBorder.none,
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
   width: 350,
  ),
),


Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
              hintText: "City",
          border: InputBorder.none,
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
   width: 350,
  ),
),


Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
            hintText: "State",
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
 width: 350,
  ),
),


Padding(
  padding: const EdgeInsets.fromLTRB(0, 13, 0, 00),
  child:   Container(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
             hintText: "PINcode",
          border: InputBorder.none,
          
        ),
      ),
    ),
    decoration: BoxDecoration(
  
    // color: Colors.red,
    border: Border.all(
      color: Colors.black,
      width: 1.2
    ),
  
  borderRadius: BorderRadius.circular(8)
  
    ),
    height: 50,
   width: 350,
  ),
),

Padding(
  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child:   CupertinoButton(
    color: Color(0xff219653),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 23,),),
    ), onPressed: (){
    html.window.sessionStorage.clear();
 Completer<Map<String, String>> completer = 
        Completer<Map<String, String>>();
  js.context.callMethod('checkout', [jsonEncode({
    'key': 'rzp_test_lYxGGHxlS5kbeE',
      'amount': 4000,                           // amount in paisa
      'name': 'GHM CYCE',
      
      'prefill': {'name': "vishnu", 'email': "gunreddyvishnu"}
  })]);

_timer =Timer.periodic(_timerDuration, (timer) { 


if(html.window.sessionStorage.containsKey('razorpayStatus')){
Map<String, String> data = Map.fromEntries(
            html.window.sessionStorage.entries,
          );
          html.window.sessionStorage.clear();
          completer.complete(data);
          _timer!.cancel();
          _timer = null;


}
completer.future.then((value) {
  print(value['razorpayStatus']);
if(value['razorpayStatus']== 'SUCCESS'){

print("transaction done");

}
else{
  print("transaction failed");

}
});

});
  //   Future<Map<String, String>> _checkout(
  //   Map<String, dynamic> options
  // ) async {
  //     Completer<Map<String, String>> completer = 
  //       Completer<Map<String, String>>();
  //     // calls js function defined in Step 3      
  //     ;
  //     _timer = Timer.periodic(_timerDuration, (timer) {
  //       if(html.window.sessionStorage.containsKey('razorpayStatus'){
  //         Map<String, String> data = Map.fromEntries(
  //           html.window.sessionStorage.entries,
  //         );
  //         html.window.sessionStorage.clear();
  //         completer.complete(data);
  //         _timer!.cancel();
  //         _timer = null;
  //       }
  //     });
  //   return completer.future;
  // }


  
  }),
)




    ],
  ),
)










          // Column(),
    ],
  ),
),

    );
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();

     window.addEventListener("message", (event) {
    // MessageEvent event2 = event;
  // if(event.currentTarget=="rps12"){

  //   print("this is true");
  // }
  });
  }

}