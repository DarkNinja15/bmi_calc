// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

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
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String result = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove banner
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/health.png',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Stay fit and healty',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: heightController,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.trending_up,
                        ),
                        labelText: 'Enter your Height (in cms)',
                        hintText: '20cm',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      controller: weightController,
                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.line_weight,
                        ),
                        labelText: 'Enter your Weight (in kgs)',
                        hintText: '50kg',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // print("height = " + heightController.text);
                      // print("weight = " + weightController.text);
                      double height = double.parse(heightController.text) / 100;
                      double weight = double.parse(weightController.text);
                      double res = weight / (height * height);
                      result = res.toStringAsFixed(2);
                      // print("res = " + result);
                      setState(() {});
                    },
                    child: const Text('Calculate my BMI'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your BMI is: $result',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
