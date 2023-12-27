import 'package:flutter/material.dart';

class TextfieldPasswordWidget extends StatefulWidget {
  const TextfieldPasswordWidget({super.key});

  @override
  State<TextfieldPasswordWidget> createState() =>
      _TextfieldPasswordWidgetState();
}

class _TextfieldPasswordWidgetState extends State<TextfieldPasswordWidget> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        filled: true,
        hintText: 'Digite sua senha',
        prefixIcon: const Icon(
          Icons.lock,
          color: Colors.blue,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isObscureText = !isObscureText;
            });
          },
          child: Icon(
            isObscureText ? Icons.visibility_off : Icons.visibility,
            color: const Color.fromARGB(255, 80, 91, 109),
          ),
        ),
      ),
    );
  }
}
