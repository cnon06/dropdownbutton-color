import 'package:dropdown/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dropDownValue = "Red";
  List<MyColor> colors = [
    MyColor(colorName: "Red", color: Colors.red),
    MyColor(colorName: "Blue", color: Colors.blue),
    MyColor(colorName: "Green", color: Colors.green),
    MyColor(colorName: "Teal", color: Colors.teal),
    MyColor(colorName: "Pink", color: Colors.pink),
    MyColor(colorName: "Purple", color: Colors.purple),
    MyColor(colorName: "Amber", color: Colors.amber),
    MyColor(colorName: "Cyan", color: Colors.cyan),
  ];

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
                    items: colors
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.colorName,
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  height: 15,
                                  color: e.color,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(e.colorName),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      dropDownValue = value!;
                      setState(() {});
                    })
              ],
            ),
          )),
    );
  }
}
