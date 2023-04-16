import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String operation = "Stop";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Remote Car")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Center(
              child: Container(
                height: 250,
                width: 350,
                color: Color.fromARGB(255, 219, 163, 229),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  SizedBox(
                    width: 90,
                    //height: 40,
                    child: ElevatedButton(
                      onPressed: (){onPressed("Forward");},
                      child: const Text("Forward")),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 90,
                          //height: 40,
                          child: ElevatedButton(
                            onPressed: (){onPressed("Left");}, 
                            child: const Text("Left")),
                        ),
                        SizedBox(
                          width: 90,
                          //height: 40,
                          child: ElevatedButton(
                            onPressed: (){onPressed("Stop");},
                            child: const Text("Stop")),
                        ),
                        SizedBox(
                          width: 90,
                          //height: 40,
                          child: ElevatedButton(
                            onPressed: (){onPressed("Right");},
                            child: const Text("Right")),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 90,
                      //height: 40,
                      child: ElevatedButton(
                      onPressed: (){onPressed("Reverse");}, 
                      child: const Text("Reverse")),
                    )
                  ]), 
              ),
            ),
            Text(
            operation, 
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)), 
          ],
        ), 
      )
      ), 
    ); 
  }

  void onPressed(String s) {
    operation = s;
    setState(() {});
  }
}