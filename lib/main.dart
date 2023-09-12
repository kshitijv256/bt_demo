import 'package:bt_demo/body/page_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Mark as Delivered",
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: const PageLayout(),
        ));
  }
}
