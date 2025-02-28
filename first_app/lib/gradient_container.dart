import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';
// import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// StatelessWidget is a widget that does not have a state
class GradientContainer extends StatelessWidget {
  // This is how to create a constructor for the GradientContainer widget
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  // This is how to build the widget
  @override
  Widget build(BuildContext context) {
    return Container(   // Container is a widget that provides a container for the application
      decoration: BoxDecoration( // BoxDecoration is a widget that provides a decoration for the container
        gradient: LinearGradient( // LinearGradient is a widget that provides a linear gradient for the container
          colors: colors, // colors is a list of colors for the gradient
          begin: startAlignment, // startAlignment is the starting alignment of the gradient
          end: endAlignment, // endAlignment is the ending alignment of the gradient
        ),
      ),
      child: const Center( // Center is a widget that provides a center for the application
        child: DiceRoller(), // DiceRoller is a widget that provides a dice roller for the application      
      ),
    );
  }
}

