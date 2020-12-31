import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/data.dart';
import 'package:uidesign/widgets/pieChart.dart';
class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Expenses", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses.map((e) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: pieColors[expenses.indexOf(e)],

                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(e['name'], style: TextStyle(
                            fontSize: 15
                          ),)

                        ],
                      ),
                    ),).toList()
                  ),

              ),
            ),
            Expanded(
                flex: 5,
                child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
