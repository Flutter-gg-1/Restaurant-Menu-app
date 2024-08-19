




import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:res/models/food_model.dart';
import 'package:res/widget/button_widget.dart';
import 'package:res/widget/diolog_widget.dart';
import 'package:res/widget/sheet_continer.dart';


class TabContant extends StatelessWidget {
  const TabContant({
    super.key, required this.foodModel,
  });

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        const SizedBox(height:60 ,),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: 320,
            height: 110,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 80,left: 5),
                  child: Icon(
                    FontAwesome.heart,
                    color: Color(0xffFB6236),
                    size: 16,
                  ),
                ),
                Image.asset(
                  foodModel.img,
                  height: 60,
                  width: 100,
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        foodModel.name,
                        style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xff484646)),
                      ),
                       Text(
                        foodModel.sub,
                        style: const TextStyle(fontSize: 13),
                      ),
                       Row(
                        children: [
                          const Icon(
                            FontAwesome.star_solid,
                            color: Color(0xffFB6236),
                            size: 14,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            foodModel.star,
                            style: const TextStyle(color: Color(0xffFB6236)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                           Text(
                            foodModel.price,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
    
                          const SizedBox(width: 80,),
                          Container(
                              width: 28,
                              height: 22,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(6),
                                  color: const Color(0xffFB6236)),
                              child: const Center(
                                  child: Icon(
                                FontAwesome.plus_solid,
                                color: Colors.white,
                                size: 16,
                              )))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    
        ,const Spacer(flex:1 ,)
    
    
    
        ,ButtonWidget(tex: "Scan Coupon",fun: () {
          
    
          showModalBottomSheet(
            backgroundColor: Colors.transparent,
           
            context: context, builder: (context) {
            return  SheetContiner(foodModel: foodModel,);
          },);
        },),
    
        const SizedBox(height:20 ,),
    
    
        ButtonWidget(tex: "Show info", fun: () {
          
          showDialog(context: context, builder: (context) {
            
    
            return  const DiologWidget();
          },);
        },)
    
    
       , const SizedBox(height:100 ,)
      ],
    );
  }
}

