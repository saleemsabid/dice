import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientContainer(),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 123, 108, 156),
              Color.fromARGB(255, 89, 60, 156),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 30.0, shadows: [
              Shadow(
                  color: Color.fromARGB(255, 37, 37, 37),
                  blurRadius: 5,
                  offset: Offset.zero)
            ]),
          ),
        ),
      ),
    );
  }
}
