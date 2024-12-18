import 'package:flutter/material.dart';
import 'package:akram2/akram_config/ak_validators.dart';
import 'package:akram2/akram_helpers/ak_constans.dart';
import 'package:akram2/akram_config/ak_routes.dart';
import 'package:akram2/akram_models/ak_login_models.dart';
import 'package:akram2/akram_theme/ak_Color.dart';
import 'package:akram2/akram_widget/ak_custom_card.dart';
import 'package:akram2/akram_widget/ak_custom_text.dart';



class LoginPage extends StatefulWidget{
  @override
  LoginScreenState createState()=>  LoginScreenState();
}
class LoginScreenState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  void _login() {
    if (_formKey.currentState!.validate()) {
      UserModel user = UserModel(
        id: '1',
        username: emailController.text,
        password: passwordController.text,
        email: emailController.text,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('حل التكليف صفحة تسجيل الدخول')),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding,
          vertical: 10),
        child: CustomCard(

          child: Form(key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFiled(
                  controller: nameController,
                  lableText: 'name',
                  obscureText: false,
                ),
                SizedBox(height: 14,),
                CustomTextFiled(
                  controller: passwordController,
                  lableText: 'password',
                  obscureText: true,
                  Validator: validatePassword,
                ),
                SizedBox(height: 14,),
                CustomTextFiled(
                  controller: emailController,
                  lableText: 'email',
                  obscureText: false,
                  Validator: validateEmail,

                ),
                SizedBox(height: 14,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: _login, child: Text('login')),

                  ],


                ),

              ],


            ),


          ),

        ),
      ),


    );
  }
}





