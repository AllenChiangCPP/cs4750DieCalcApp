import 'package:flutter/material.dart';
import 'dice.dart';

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
          appBarTheme: AppBarTheme(
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
  int testVar = 0;
  int rollNumber = 0;
  double averageRoll = 0;
  int minRoll = 0;
  int maxRoll = 0;

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

  //function for testing text display and data, adds d20's add modifier and sub modifier
  void addTest() {
    setState(() {
      testVar = int.parse(d20AddModController.text) + int.parse(d20SubModController.text);
    });
  }
  //function for calling all other functions
  void roll() {
    setState(() {
      rollDice();
      average();
      minimumRoll();
      maximumRoll();
    });
  }
  //function for rolling dice
  void rollDice() {
      var d20 = Dice(20, modifier: int.parse(d20AddModController.text) - int.parse(d20SubModController.text), multiplier: int.parse(d20RollsController.text));
      var d20Result = d20.roll();
      var d12 = Dice(12, modifier: int.parse(d12AddModController.text) - int.parse(d12SubModController.text), multiplier: int.parse(d12RollsController.text));
      var d12Result = d12.roll();
      var d10 = Dice(10, modifier: int.parse(d10AddModController.text) - int.parse(d10SubModController.text), multiplier: int.parse(d10RollsController.text));
      var d10Result = d10.roll();
      var d8 = Dice(8, modifier: int.parse(d8AddModController.text) - int.parse(d8SubModController.text), multiplier: int.parse(d8RollsController.text));
      var d8Result = d8.roll();
      var d6 = Dice(6, modifier: int.parse(d6AddModController.text) - int.parse(d6SubModController.text), multiplier: int.parse(d6RollsController.text));
      var d6Result = d6.roll();
      var d4 = Dice(4, modifier: int.parse(d4AddModController.text) - int.parse(d4SubModController.text), multiplier: int.parse(d4RollsController.text));
      var d4Result = d4.roll();
      var additionalMods = int.parse(additionalAddModController.text) - int.parse(additionalSubModController.text);
      rollNumber = d20Result + d12Result + d10Result + d8Result + d6Result + d4Result + additionalMods;
  }

  //function for getting average of given dice
  void average() {
      var d20 = Dice(20, modifier: int.parse(d20AddModController.text) - int.parse(d20SubModController.text), multiplier: int.parse(d20RollsController.text));
      var d20Avg = int.parse(d20RollsController.text) * d20.calculateAverage();
      var d12 = Dice(12, modifier: int.parse(d12AddModController.text) - int.parse(d12SubModController.text), multiplier: int.parse(d12RollsController.text));
      var d12Avg = int.parse(d12RollsController.text) * d12.calculateAverage();
      var d10 = Dice(10, modifier: int.parse(d10AddModController.text) - int.parse(d10SubModController.text), multiplier: int.parse(d10RollsController.text));
      var d10Avg = int.parse(d10RollsController.text) * d10.calculateAverage();
      var d8 = Dice(8, modifier: int.parse(d8AddModController.text) - int.parse(d8SubModController.text), multiplier: int.parse(d8RollsController.text));
      var d8Avg = int.parse(d8RollsController.text) * d8.calculateAverage();
      var d6 = Dice(6, modifier: int.parse(d6AddModController.text) - int.parse(d6SubModController.text), multiplier: int.parse(d6RollsController.text));
      var d6Avg = int.parse(d6RollsController.text) * d6.calculateAverage();
      var d4 = Dice(4, modifier: int.parse(d4AddModController.text) - int.parse(d4SubModController.text), multiplier: int.parse(d4RollsController.text));
      var d4Avg = int.parse(d4RollsController.text) * d4.calculateAverage();
      var additionalMods = int.parse(additionalAddModController.text) - int.parse(additionalSubModController.text);
      averageRoll = d20Avg + d12Avg + d10Avg + d8Avg + d6Avg + d4Avg + additionalMods;
  }

  //function for getting minimum possible roll
  void minimumRoll() {
    var d20Min = int.parse(d20RollsController.text) + (int.parse(d20RollsController.text) * (int.parse(d20AddModController.text) - int.parse(d20SubModController.text)));
    var d12Min = int.parse(d12RollsController.text) + (int.parse(d12RollsController.text) * (int.parse(d12AddModController.text) - int.parse(d12SubModController.text)));
    var d10Min = int.parse(d10RollsController.text) + (int.parse(d10RollsController.text) * (int.parse(d10AddModController.text) - int.parse(d10SubModController.text)));
    var d8Min = int.parse(d8RollsController.text) + (int.parse(d8RollsController.text) * (int.parse(d8AddModController.text) - int.parse(d8SubModController.text)));
    var d6Min = int.parse(d6RollsController.text) + (int.parse(d6RollsController.text) * (int.parse(d6AddModController.text) - int.parse(d6SubModController.text)));
    var d4Min = int.parse(d4RollsController.text) + (int.parse(d4RollsController.text) * (int.parse(d4AddModController.text) - int.parse(d4SubModController.text)));
    var additionalMods = int.parse(additionalAddModController.text) - int.parse(additionalSubModController.text);
    minRoll = d20Min + d12Min + d10Min + d8Min + d6Min + d4Min + additionalMods;
  }

  //function for getting maximum possible roll
  void maximumRoll() {
    var d20Max = (20 * int.parse(d20RollsController.text)) + (int.parse(d20RollsController.text) * (int.parse(d20AddModController.text) - int.parse(d20SubModController.text)));
    var d12Max = (12 * int.parse(d12RollsController.text)) + (int.parse(d12RollsController.text) * (int.parse(d12AddModController.text) - int.parse(d12SubModController.text)));
    var d10Max = (10 * int.parse(d10RollsController.text)) + (int.parse(d10RollsController.text) * (int.parse(d10AddModController.text) - int.parse(d10SubModController.text)));
    var d8Max = (8 * int.parse(d8RollsController.text)) + (int.parse(d8RollsController.text) * (int.parse(d8AddModController.text) - int.parse(d8SubModController.text)));
    var d6Max = (6 * int.parse(d6RollsController.text)) + (int.parse(d6RollsController.text) * (int.parse(d6AddModController.text) - int.parse(d6SubModController.text)));
    var d4Max = (4 * int.parse(d4RollsController.text)) + (int.parse(d4RollsController.text) * (int.parse(d4AddModController.text) - int.parse(d4SubModController.text)));
    var additionalMods = int.parse(additionalAddModController.text) - int.parse(additionalSubModController.text);
    maxRoll = d20Max + d12Max + d10Max + d8Max + d6Max + d4Max + additionalMods;
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
                        
                        child: const Center(
                          child: Text('D20:'),
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
                        
                        child: const Center(
                          child: Text('D12:'),
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
                        
                        child: const Center(
                          child: Text('D10:'),
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
                        
                        child: const Center(
                          child: Text('D8:'),
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
                        
                        child: const Center(
                          child: Text('D6:'),
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
                        
                        child: const Center(
                          child: Text('D4:'),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: roll, // Call the addTest function when the button is pressed
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 50)),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('First Roll: '),
                      Text('$rollNumber'), // Displaying the testVar here
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Average: '),
                      Text('$averageRoll'), // Displaying the testVar here
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Minimum: '),
                      Text('$minRoll'), // Displaying the testVar here
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Maximum: '),
                      Text('$maxRoll'), // Displaying the testVar here
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Beat Odds: '),
                      Text('$rollNumber'), // Displaying the testVar here
                      Text('%'),
                    ],
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
