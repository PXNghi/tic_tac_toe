import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants/string_constants.dart';

OutlinedButton buttonWidget(BuildContext context) {
  return OutlinedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.replay),
    label: const Text(
      reset,
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      side: const BorderSide(width: 2.0, color: Colors.red),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0)
      )
    ),
  );
}
