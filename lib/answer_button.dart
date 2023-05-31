import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answer ,required this.onTap});

  final String answer;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [ElevatedButton(onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
      ),
          child: Text(answer, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14),),),
        const SizedBox(height: 8,),]
    );
  }
}
