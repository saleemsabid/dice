import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}

//styled text widget
class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, shadows: [
        Shadow(
            color: Color.fromARGB(255, 37, 37, 37),
            blurRadius: 5,
            offset: Offset.zero)
      ]),
    );
  }
}
