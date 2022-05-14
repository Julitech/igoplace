import 'package:flutter/material.dart';

//Custom Button
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x288135f9),
              blurRadius: 16,
              offset: Offset(0, 8),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xaff5293EE),
              Color(0xff8135f9),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.40,
          ),
        ),
      ),
    );
  }
}

//Custom textfield

class CustomField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  const CustomField(
      {Key? key, required this.controller, required this.hint, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        hintStyle: const TextStyle(
          color: Color(0xff8e8f99),
          fontSize: 14,
        ),
        fillColor: const Color(0xFFF3F4F8),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD1D2D8),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
