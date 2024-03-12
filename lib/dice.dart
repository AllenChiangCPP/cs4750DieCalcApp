import 'dart:math';

class Dice {
  final int sides;
  final int modifier;
  final int multiplier;
  //late double average;

  // Constructor with optional modifier and multiplier
  Dice(this.sides, {this.modifier = 0, this.multiplier = 1}) {
    // Calculate the average value based on the sides and modifier
    //calculateAverage();
  }

  // Function to calculate the average value of a single roll with modifiers
  double calculateAverage() {
    double average = 0.0;
    average = ((sides.toDouble()) / 2 + 0.5) + modifier;
    print(average);
    return average;
  }

  // Function to roll the dice and return the result
  int roll() {
    int rollTotal = 0;
    for (var i = 0; i < multiplier; i++) {
      int currentRoll = Random().nextInt(sides) + 1 + modifier;
      //print(currentRoll);
      rollTotal += currentRoll;
    }
    //return (Random().nextInt(sides) + 1 + modifier) * multiplier;
    return rollTotal;
  }
}


