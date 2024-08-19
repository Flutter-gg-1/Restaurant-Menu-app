

import 'package:flutter/material.dart';
import 'package:res/models/food_model.dart';


class SheetContiner extends StatelessWidget {
  const SheetContiner({
    super.key, required this.foodModel,
  });

  final FoodModel foodModel ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
    
      decoration: BoxDecoration(
    
         color: const Color(0xffFB6236),
    
         borderRadius: BorderRadius.circular(16)
    
      ),
    
     child:  SizedBox(
      width: double.infinity,
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Coupons" ,style:  TextStyle(color: Colors.white ,fontSize: 15 ),),
          ),
          const SizedBox(height:10 ,),
          const Divider(color: Colors.white,thickness: 0.5,),
    
          const SizedBox(height: 10,),
       
            Padding(
             padding: const EdgeInsets.only(left:15 ),
             child: Text(foodModel.name, style:  const TextStyle(color: Colors.white, fontSize: 24),),
           ),
           const SizedBox(height: 10,),
           const Padding(
            padding: EdgeInsets.only(left:15 ),
             child: Text("ID" , style:  TextStyle(color: Colors.white),),
           ),
           const Padding(
             padding: EdgeInsets.only(left:15 ),
             child: Text("C13579246810", style:  TextStyle(color: Colors.white),),
           ),
    
    
           const SizedBox(height: 60,),
    
           Center(
             child: Container(
             
              width: 160,
              height: 160,
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white
              ),
             
              child: Image.asset("asset/img/QR Code Sample.png"),
             ),
           )
       
        ],
       ),
     ),
    
    );
  }
}

