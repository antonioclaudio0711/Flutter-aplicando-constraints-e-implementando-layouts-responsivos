import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => setState(() => quantity++),
            child: const Icon(
              Icons.arrow_circle_up,
              size: 20,
            ),
          ),
          SizedBox(
            height: 30,
            child: Center(
              child: Text(
                quantity.toString(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() => quantity--);
              if (quantity < 0) {
                quantity = 0;
              }
            },
            child: const Icon(
              Icons.arrow_circle_down,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
