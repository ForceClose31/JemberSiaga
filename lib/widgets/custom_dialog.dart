import 'package:flutter/material.dart';

void showCustomDialog(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String message,
  required VoidCallback onPressed,
  Color iconColor = const Color.fromRGBO(0, 120, 212, 1),
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: const Color.fromRGBO(227, 227, 227, 1),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 48,
          ),
          const SizedBox(height: 26),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            message,
            style: const TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 44),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(109, 48),
              backgroundColor: const Color.fromRGBO(17, 35, 90, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Text(
              'OK',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
