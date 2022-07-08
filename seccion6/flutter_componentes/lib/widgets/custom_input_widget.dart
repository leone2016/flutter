import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  /*
  valores opcionales this.labelText, this.helperText, this.counterText
   */
  const CustomInputWidget({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        //similar a placeholder
        hintText: hintText,
        // placeholder sobre input
        labelText: labelText,
        // texto de ayuda abajo del input
        helperText: helperText,
        // texto ayuda en la parte de abajo-derecha de input
        counterText: counterText,
        // icono alado izq del hintText (placeholder)
        prefixIcon: Icon(prefixIcon),
        // icono alado derecho del hintText (placeholder)
        suffixIcon: suffixIcon ==null? null : Icon(suffixIcon),
        //icono fuera del input
        icon: icon ==null? null : Icon(icon),
        /*focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.green
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))*/
      ),
    );
  }
}
