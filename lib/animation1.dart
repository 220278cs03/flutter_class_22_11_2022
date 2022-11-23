import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({Key? key}) : super(key: key);

  @override
  State<Animation1> createState() => _Animation1State();
}
class _Animation1State extends State<Animation1> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            AnimatedContainer(
                duration: Duration(milliseconds: 700),
                color: isActive ? Colors.red : Colors.blue,
              height: 200,
              width: 200,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 700),
              color: isActive ? Colors.blue : Colors.red,
              height: 200,
              width: 200,
            ),
          ],
        ),
      floatingActionButton: GestureDetector(
        onTap: (){
          isActive = !isActive;
          setState(() {});
        },
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue
          ),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
