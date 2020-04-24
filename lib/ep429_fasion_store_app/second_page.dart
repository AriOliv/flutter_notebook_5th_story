import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 16),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Looks", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 8,),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2.8,
                      decoration: BoxDecoration(color: Colors.blue,
                      borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.only(right: 16),
                    );
                  }),
            ),
            Text("Looks", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}





















