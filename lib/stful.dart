import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    print("numbers");
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("son : $number", style: TextStyle(fontSize: 32),),),
      floatingActionButton: GestureDetector(
        onTap: (){
          number++;
          print(number);
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
