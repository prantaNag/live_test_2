import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: ResponsiveGridRow(children: [
            ResponsiveGridCol(
              xs: 12,
              md: 6,
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    width: 300.0,
                    child: FractionallySizedBox(
                      widthFactor: 0.50,
                      heightFactor: 0.50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          child: Image.network(
                            "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Some One',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text('someone@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ],
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              md: 6,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
