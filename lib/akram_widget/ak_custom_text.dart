import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:akram2/akram_helpers/ak_constans.dart';
import 'package:akram2/akram_theme/ak_Color.dart';
import 'package:akram2/akram_config/ak_validators.dart';

class  CustomTextFiled extends StatelessWidget{
  final TextEditingController controller;
  final String lableText;
  final bool obscureText;
  final String? Function(String)?Validator;



  const  CustomTextFiled({
    Key? key,
    required this.controller,
    required this.lableText,
    required this.obscureText,
    this.Validator,


  }):super(key:key);
  @override
  Widget build(BuildContext context){
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: lableText,
        labelStyle: TextStyle(
          fontSize: 18,
          color: AppColor.text,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(color: AppColor.accent,
            width: 3.0,
          ),
        ),


      ),



    );



  }



}