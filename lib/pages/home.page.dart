import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            search(),
          ],
          // child: Text("Home Page"),
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(children: [
      Icon(Icons.search),
      Container(
        width: 300,
        padding: EdgeInsets.only(left: 10),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Search ...",
            labelStyle: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
      )

      // Text("Search"),
    ]),
  );
}
