import 'package:flutter/material.dart';
import 'package:res/widget/button_widget.dart';


class DiologWidget extends StatelessWidget {
  const DiologWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
    
      content: SizedBox(
        width: 250,
        height: 150,
        child: Column(
          children: [
            const SizedBox(height:30 ,),
            const Text("This is an Alert", style: TextStyle(fontSize: 22),),
            const SizedBox(height:35 ,),
            ButtonWidget( wid: 200,tex: "Close alert", fun: () {
              
               Navigator.of(context).pop();
            },)
          ],
        ),
      ),
    
    
    
    
    );
  }
}

