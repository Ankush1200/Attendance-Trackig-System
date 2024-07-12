import 'package:attendence_traking_system/common/custom-btn.dart';
import 'package:attendence_traking_system/constants/colors.dart';
import 'package:attendence_traking_system/features/auth/controller/login-controller.dart';
import 'package:attendence_traking_system/features/auth/views/register.dart';
import 'package:attendence_traking_system/features/home/views/home.dart';
import 'package:flutter/material.dart';

 
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:GradientScaffold.gradientDecoration ,
      child:  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: SingleChildScrollView(
              child: Column(
              children: [
              const SizedBox(height:40,),
              const Row(
                children: [
                  Text('Hello\nThere.....',style: NormalTextStyle.headingstyle,),
                ],
              ),
              const SizedBox(height:60,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: loginemailcontroller,
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email *Required';
                  } else {
                    return null;
                  }
                  },
                  decoration:InputFromStyle.customDecoration(hintText: 'Email', prefixIcon: Icons.mail),
                  keyboardType: TextInputType.emailAddress,
                  style: NormalTextStyle.textStyle,
                ),
                const SizedBox(height:20,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: loginprasswordcontroller,
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password *Required';
                  } else {
                    return null;
                  }
                  },
                  decoration:InputFromStyle.customDecoration(hintText: 'Password', prefixIcon: Icons.key),
                  keyboardType: TextInputType.visiblePassword,
                  style: NormalTextStyle.textStyle,
                ),
                const SizedBox(height:60,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20),
                child: CustomElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                }, buttonText:'Login',horizontalpadding: 40,verticalpadding: 10,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New User ?',style: NormalTextStyle.textStyle,),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>const RegisterNewUser()));
                  }, child:const Text('Register',style: NormalTextStyle.textStyle,))
                ],
              )
              ]),
            ),
          ),),
      )
    );
  }
}