import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  bool nimadir = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              right: nimadir ? MediaQuery.of(context).size.width-100 : 0,
              bottom: nimadir ? MediaQuery.of(context).size.height-180 : 0,
              duration: Duration(milliseconds: 700), child: Container(
              width: 100,
              height: 100,
              color: Colors.green
            )
            ),
            AnimatedPositioned(
                left: nimadir ? MediaQuery.of(context).size.width-100 : 0,
                bottom: 0,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow
            )
            ),
            AnimatedPositioned(
                top: nimadir ? MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - 155 : 0,
                right: nimadir ? MediaQuery.of(context).size.width-100 : 0,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.red
            )
            ),
            AnimatedPositioned(
                top:0,
                left: nimadir ? MediaQuery.of(context).size.width-100 : 0,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.blue
            )
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          nimadir = !nimadir;
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
