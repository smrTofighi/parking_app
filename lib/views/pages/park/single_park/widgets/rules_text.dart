import 'package:flutter/material.dart';
import 'package:park_app/models/park_model.dart';

class RulesText extends StatelessWidget {
  const RulesText({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        parkCarList[index].descripton.toString(),
        textAlign: TextAlign.right,
        style: const TextStyle(color: Colors.grey, fontSize: 13),
        
      ),
    );
  }
}
