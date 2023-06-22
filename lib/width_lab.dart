import 'package:flutter_width_height_test/height_lab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_width_height_test/utils.dart';

class WidthLab extends StatefulWidget {
  const WidthLab({super.key});

  @override
  State<WidthLab> createState() => _WidthLabState();
}

class _WidthLabState extends State<WidthLab> {
  @override
  Widget build(BuildContext context) {
    print("REBUILD / Width Lab !!!");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Width LAB"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Buttons(),
            SizedBox(height: 32),
            WidthLabWidget(),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        MaterialButton(
          onPressed: null,child: Text("Width Lab"),color: Theme.of(context).secondaryHeaderColor),
        MaterialButton(
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (ctx) => const HeightLab()));


            },child: Text("Height Lab"),color: Theme.of(context).secondaryHeaderColor),

      ]),
    );
  }
}

class WidthLabWidget extends StatefulWidget {
  const WidthLabWidget({super.key});

  @override
  State<WidthLabWidget> createState() => _WidthLabWidgetState();
}

class _WidthLabWidgetState extends State<WidthLabWidget> {
  int _counter = 1;

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (_counter < 8) {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("INNER  REBUILD / Width Lab !!!");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Switch width between 8 column',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        Container(
            width: MediaQuery.of(context).size.width.width8(_counter),
            height: MediaQuery.of(context).size.width.height52(),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
                textAlign: TextAlign.center)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                color: Theme.of(context).cardColor,
                onPressed: _decrementCounter,
                child: const Icon(Icons.exposure_minus_1),
              ),
              MaterialButton(
                color: Theme.of(context).cardColor,
                onPressed: _incrementCounter,
                child: const Icon(Icons.plus_one),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
