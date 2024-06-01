import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  Function()? onTap;
  MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 59, 101),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Sign in',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyButton1 extends StatelessWidget {
  Function()? onTap;
  MyButton1({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 59, 101),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Register',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
