import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.size,
    this.obscure,
    this.hint,
    this.icon,
  }) : super(key: key);

  final Size size;
  final bool? obscure;
  final String? hint;
  final IconButton? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.65,
      child: TextFormField(
        obscureText: obscure == null ? false : obscure!,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.greenAccent.shade700,
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          hintText: hint == null ? '' : hint!,
          suffixIcon: icon == null ? Icon(null) : icon!,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
