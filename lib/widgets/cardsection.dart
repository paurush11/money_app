import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/data.dart';
import 'package:uidesign/widgets/cardDetails.dart';
class CardSection extends StatelessWidget {
  List<int>numbers = [1945,2356];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Text("Selected card",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
        Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context,i){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: customShadow,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(children: [
              Positioned.fill(
                top: 100,
                bottom: -200,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: customShadow,
                    shape: BoxShape.circle,
                    color: Colors.white38,
                  ),

                ),
              ),
              Positioned.fill(
                left:-300,
                top: -100,
                bottom: -100,
                child: Container(

                  decoration: BoxDecoration(boxShadow: customShadow, shape: BoxShape.circle, color: Colors.white38,),
                ),
              ),

              CardDetails(number: numbers[i], ),
            ],),
          );
        }))
      ],
    );
  }
}
