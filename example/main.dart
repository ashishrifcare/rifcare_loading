import 'package:flutter/material.dart';
import 'package:rifcare_loading/rifcare_loading.dart';



void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleApp(),
    );
  }
}




class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            RifcareLoading.simple(
              context: context,
              loadingColor: Colors.red,
              loadingText: 'Loading...',
              loadingTextSize: 18,
              backgroundColor: Colors.white,
              barrierDismissible: false,
              canPop: false,
              loadingTextColor: Colors.red,
              borderRadius: 10,
            );
          },
          child: Text(
            'Click Me'
          ),
        ),
      ),
    );
  }
}

