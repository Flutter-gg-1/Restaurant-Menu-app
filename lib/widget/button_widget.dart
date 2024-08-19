


import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.tex, required this.fun,  this.wid =240 , 
  });


  final String tex;

  final double wid;

  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: fun,
      child: Container(
        width: wid,
        height: 48,
      
        decoration: BoxDecoration(
      
          borderRadius: BorderRadius.circular(8)
      
          ,color: const Color(0xffFB6236)
        ),
      
        child:  Center(child: Text( tex , style:  const TextStyle(fontWeight: FontWeight.bold,color: Colors.white , fontSize: 15),)),
      ),
    );
  }
}
