import 'package:flutter_width_height_test/width_lab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_width_height_test/utils.dart';

class HeightLab extends StatefulWidget {
  const HeightLab({super.key});

  @override
  State<HeightLab> createState() => _HeightLabState();
}

class _HeightLabState extends State<HeightLab> {
  @override
  Widget build(BuildContext context) {
    print("REBUILD / Height Lab !!!");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Height LAB"),
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            Buttons(),
            SizedBox(height: 32),
            HeightLabWidget(),
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
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => const WidthLab()));
                },
                child: Text("Width Lab"),
                color: Theme.of(context).secondaryHeaderColor),
            MaterialButton(
                onPressed: null,
                child: Text("Height Lab"),
                color: Theme.of(context).secondaryHeaderColor),
          ]),
    );
  }
}

class HeightLabWidget extends StatefulWidget {
  const HeightLabWidget({super.key});

  @override
  State<HeightLabWidget> createState() => _HeightLabWidgetState();
}

class _HeightLabWidgetState extends State<HeightLabWidget> {
  int _index = 5;
List<double> breakPoint = [200,240,300,360,400,420,480];
  void _decrementCounter() {
    setState(() {
      if (_index > 0) {
        _index--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (_index < 6) {
        _index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("INNER  REBUILD / Height Lab !!!");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Switch height between break points',
        ),
        Text(
          '${breakPoint[_index].ceil()}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Container(
            width: MediaQuery.of(context).size.width.width8(5),
            height: breakPoint[_index].height52(),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
                textAlign: TextAlign.center,
                controller:TextEditingController(text: _index.toString()))),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                color: Theme.of(context).cardColor,
                onPressed: _decrementCounter,
                child: const Icon(Icons.arrow_circle_down),
              ),
              MaterialButton(
                color: Theme.of(context).cardColor,
                onPressed: _incrementCounter,
                child: const Icon(Icons.arrow_circle_up),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

