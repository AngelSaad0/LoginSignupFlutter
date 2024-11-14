import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton.light(
      {super.key, required this.text, required this.onPressed})
      : backColor = const Color(0xFFf0e5ff),
        foreColor = const Color.fromARGB(255, 109, 7, 128);

  const CustomElevatedButton.dark(
      {super.key, required this.text, required this.onPressed})
      : backColor = Colors.purple,
        foreColor = Colors.white;

  final String text;
  final VoidCallback onPressed;
  final Color backColor;
  final Color foreColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(backColor),
            foregroundColor: WidgetStatePropertyAll(foreColor),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(
                horizontal: 98,
                vertical: 10,
              ),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(27),
              ),
            )),
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
