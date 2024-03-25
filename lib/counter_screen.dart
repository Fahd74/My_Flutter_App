import 'package:flutter/material.dart';
import 'package:my_flutter_app/login_screen.dart';

class CounterScreen extends StatefulWidget{
  static const String routeName = 'counter-screen';
  int counter = 0;
  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${widget.counter}',
                style: const TextStyle(
                    fontSize: 30
                ),
              ),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    widget.counter++;
                  });
                  print(widget.counter);
                },
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),

    );
  }
  }