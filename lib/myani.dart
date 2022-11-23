import 'package:flutter/material.dart';

class Rectangle1 extends StatefulWidget {
  const Rectangle1({Key? key}) : super(key: key);

  @override
  State<Rectangle1> createState() => _Rectangle1State();
}

class _Rectangle1State extends State<Rectangle1> {
  bool nimadir = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
                right: nimadir ? 100 : MediaQuery.of(context).size.width-100,
                bottom: nimadir ? 270 : MediaQuery.of(context).size.height-100 - 80,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.green
            )
            ),
            AnimatedPositioned(
                left: nimadir ? 100 : MediaQuery.of(context).size.width-100,
                bottom: nimadir ? 270 : MediaQuery.of(context).size.height - 100 - 80,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
            )
            ),
            AnimatedPositioned(
                top: nimadir ? 270 : MediaQuery.of(context).size.height - 100 - 80,
                right: nimadir ? 100 : MediaQuery.of(context).size.width-100,
                duration: Duration(milliseconds: 700), child: Container(
                width: 100,
                height: 100,
                color: Colors.red
            )
            ),
            AnimatedPositioned(
                top:nimadir ? 270 : MediaQuery.of(context).size.height-100 - 80,
                left: nimadir ? 100 : MediaQuery.of(context).size.width-100,
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
