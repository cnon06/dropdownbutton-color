import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dropDownValue = "red";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                    value: dropDownValue,
                    items: [
                      DropdownMenuItem(
                        value: "red",
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Red"),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "blue",
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Blue"),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: "green",
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text("Green"),
                          ],
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      dropDownValue = value!;
                      setState(() {
                        
                      });
                    })
              ],
            ),
          )),
    );
  }
}
