import 'package:flutter/material.dart';

borderFunc(int i) {
  switch (i) {
    case 0:
      return const Border(
        right: BorderSide(),
        bottom: BorderSide(),
      );
    case 1:
      return const Border(
        right: BorderSide(),
        bottom: BorderSide(),
      );
    case 2:
      return const Border(
        bottom: BorderSide()
      );
    case 3:
      return const Border(
        right: BorderSide(),
        bottom: BorderSide(),
      );
    case 4:
      return const Border(
        right: BorderSide(),
        bottom: BorderSide(),
      );
    case 5:
      return const Border(
        bottom: BorderSide()
      );
    case 6:
      return const Border(
        right: BorderSide()
      );
    case 7:
      return const Border(
        right: BorderSide()
      );
    default:
      return Border.all(color: Colors.transparent);
  }
}

Text titleWidget() {
  return const Text(
    "Tic Tac Toe Game",
    style: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600
    ),
  );
}

Text msgWidget(msg) {
  return Text(
    msg,
    style: const TextStyle(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.w600
    ),
  );
}
