import 'package:flutter/material.dart';
import 'package:uidesign/data.dart';
import 'package:uidesign/widgets/cardsection.dart';
import 'package:uidesign/widgets/expenses.dart';
import 'package:uidesign/widgets/header.dart';

void main(){
  runApp(MaterialApp(
    home: Homepage(),
    debugShowCheckedModeBanner: false,

  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,

      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 120,
            child: Walletheader(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),

        ],
      ),
    );
  }
}
