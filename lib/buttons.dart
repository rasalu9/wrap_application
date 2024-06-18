import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wrap_application/second.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({super.key});

  @override
  State<WrapScreen> createState() => _WrapState();
}

class _WrapState extends State<WrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                  ),
                  onPressed: () {},
                  child: Text("Red")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text("Green")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue)),
                  onPressed: () {},
                  child: Text("Blue")),
            ),
          ]),
          Padding(
            padding: EdgeInsets.fromLTRB(800, 0, 0, 0),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.grey)),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => wrapsecond()));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 40, 20, 0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.black)),
                hintText: "Enter the product",
              ),
            ),
          ),
        ],
      )),
    );
  }
}
