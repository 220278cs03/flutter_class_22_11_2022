import 'package:flutter/material.dart';

class Svetafor extends StatefulWidget {
  const Svetafor({Key? key}) : super(key: key);

  @override
  State<Svetafor> createState() => _SvetaforState();
}

class _SvetaforState extends State<Svetafor> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             AnimatedContainer(
              duration: Duration(milliseconds: 700),
              decoration: BoxDecoration(
                color: index == 0 ? Colors.red : Colors.grey,
                shape: BoxShape.circle
              ),
              height: 200,
              width: 200,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              decoration: BoxDecoration(
                color: index == 1 ? Colors.yellow : Colors.grey,
                  shape: BoxShape.circle
              ),
              height: 200,
              width: 200,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              decoration: BoxDecoration(
                  color: index == 2 ? Colors.green : Colors.grey,
                  shape: BoxShape.circle
              ),
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          switch(index){
            case 0:
              index = 1;
              break;
            case 1:
              index = 2;
              break;
            case 2:
              index = 0;
              break;
          }
          setState(() {});
        },
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
