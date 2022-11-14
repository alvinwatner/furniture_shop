import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isActivated;
  const CategoryButton({
    Key? key,
    required this.text,
    this.isActivated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isActivated)
        ? Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
  }
}
