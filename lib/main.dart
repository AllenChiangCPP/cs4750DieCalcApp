import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DieCalc',
      theme: ThemeData.dark().copyWith(
          //scaffoldBackgroundColor: Colors.black, // Set background color to black
          appBarTheme: AppBarTheme(
            //backgroundColor: Colors.black,
          ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('DieCalc'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // Controllers for storing inputs
  // Initialize controllers with default values
  TextEditingController d20RollsController = TextEditingController(text: '0');
  TextEditingController d20AddModController = TextEditingController(text: '0');
  TextEditingController d20SubModController = TextEditingController(text: '0');
  TextEditingController d12RollsController = TextEditingController(text: '0');
  TextEditingController d12AddModController = TextEditingController(text: '0');
  TextEditingController d12SubModController = TextEditingController(text: '0');
  TextEditingController d10RollsController = TextEditingController(text: '0');
  TextEditingController d10AddModController = TextEditingController(text: '0');
  TextEditingController d10SubModController = TextEditingController(text: '0');
  TextEditingController d8RollsController = TextEditingController(text: '0');
  TextEditingController d8AddModController = TextEditingController(text: '0');
  TextEditingController d8SubModController = TextEditingController(text: '0');
  TextEditingController d6RollsController = TextEditingController(text: '0');
  TextEditingController d6AddModController = TextEditingController(text: '0');
  TextEditingController d6SubModController = TextEditingController(text: '0');
  TextEditingController d4RollsController = TextEditingController(text: '0');
  TextEditingController d4AddModController = TextEditingController(text: '0');
  TextEditingController d4SubModController = TextEditingController(text: '0');
  TextEditingController additionalAddModController = TextEditingController(text: '0');
  TextEditingController additionalSubModController = TextEditingController(text: '0');
  TextEditingController oddsToBeatController = TextEditingController(text: '0');

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top Column, For inputting how many times a dice is rolled, and modifiers (each roll)
        Expanded(
          flex: 50,
          child: Column(
            children: [

              //D20
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D20'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d20RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d20AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d20SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //D12
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D12'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d12RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d12AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d12SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //D10
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D10'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d10RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d10AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d10SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //D8
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D8'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d8RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d8AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d8SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //D6
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D6'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d6RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d6AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d6SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //D4
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('D4'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d4RollsController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'x Rolls',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d4AddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                          
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: d4SubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),

        //section for adding additional modifiers, odds to beat, and roll button
        Expanded(
          flex: 25,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('Additional Modifiers'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: additionalAddModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '+ Mod',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: additionalSubModController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '- Mod',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text('Odds to Beat'),
                        ),
                      ),
                    ),
                    //Number input fields
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: oddsToBeatController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add horizontal padding to the button
                child: ElevatedButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // Set border radius here
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set background color to red
                    minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)), // Set button width and height
                  ),
                  child: const Text('Roll', style: TextStyle(color: Colors.black)),
                ),
              ),

            ],
          ),
        ),

        //Bottom Column for displaying data
        Expanded(
          flex: 25,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text('First Roll: '),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text('Average: '),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text('Min: '),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text('Max: '),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text('Beat Odds: '),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}