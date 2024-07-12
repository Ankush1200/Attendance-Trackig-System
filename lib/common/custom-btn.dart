import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double horizontalpadding;
  final double verticalpadding;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.horizontalpadding,
    required this.verticalpadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal:horizontalpadding, vertical: verticalpadding),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
