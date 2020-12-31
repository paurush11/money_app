import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uidesign/data.dart';
class CardDetails extends StatelessWidget {
  CardDetails({@required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child:
          Container(
              width: 250,
              child: Image.asset("images/mastercardlogo.png")),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(15)

              ),
              child: Center(child: Text("CVV",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 30.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("**** **** ****",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("$number", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),)
                  ],
                ),
                Text("PLATINUM CARD", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)

              ],
            ),
          ),
        )

      ],
    );
  }
}
