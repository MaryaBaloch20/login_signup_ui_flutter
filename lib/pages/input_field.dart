import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final bool isPassField;
  final String placeholder;
  final String label;
  const MyInputField({
    Key? key,
    required this.placeholder,
    required this.label,
    required this.isPassField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 50.0),
      child: Container(
        padding:
            const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 32,
                color: Colors.black.withOpacity(.1),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 18),
            ),
            TextFormField(
              obscureText: isPassField,
              decoration: InputDecoration(
                hintText: placeholder,
                border: InputBorder.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}
