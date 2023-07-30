import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 120,
        color: Colors.grey,
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Task one', style: TextStyle( fontWeight: FontWeight.bold),),
                Text('Your personal task management and planning solution for planning your day, week & months'),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text('12:55 pm 25th May, 2023', textAlign: TextAlign.right,style: TextStyle(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
