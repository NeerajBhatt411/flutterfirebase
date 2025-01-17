import 'package:flutter/material.dart';
class CommonWidget{
 static SizedBox buildButton(
      {required String text, required VoidCallback onPressed}) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          )),
    );
  }

 static  TextFormField buildTextFormField(
      {required final controller,
        required String labelText,
        required IconData prefixIcon,
        IconData? suffixIocn}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        prefixIcon: Icon(prefixIcon),
        suffixIcon:
        suffixIocn != null ? Icon(Icons.visibility_off_outlined) : null,
      ),
    );
  }
}