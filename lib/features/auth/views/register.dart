import 'package:attendence_traking_system/common/custom-btn.dart';
import 'package:attendence_traking_system/constants/colors.dart';
import 'package:attendence_traking_system/features/auth/controller/register-controller.dart';
import 'package:attendence_traking_system/features/auth/views/login.dart';
import 'package:flutter/material.dart';
class RegisterNewUser extends StatelessWidget {
  const RegisterNewUser({super.key});

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
              const SizedBox(height:30,),
              const Row(
                children: [
                  Text('Let\'s get\nStarted.....',style: NormalTextStyle.headingstyle,),
                ],
              ),
              const SizedBox(height:30,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: namecontroller,
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name *Required';
                  } else {
                    return null;
                  }
                  },
                  decoration:InputFromStyle.customDecoration(hintText: 'Name', prefixIcon: Icons.person),
                  keyboardType: TextInputType.name,
                  style: NormalTextStyle.textStyle,
                ),
                const SizedBox(height:20,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: phonecontroller,
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mobile Number *Required';
                  } else {
                    return null;
                  }
                  },
                  decoration:InputFromStyle.customDecoration(hintText: 'Phone', prefixIcon: Icons.call),
                  keyboardType: TextInputType.phone,
                  style: NormalTextStyle.textStyle,
                ),
                const SizedBox(height:20,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: emailcontroller,
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
                  controller: prasswordcontroller,
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
                const SizedBox(height:20,),
               TextFormField(
                  autovalidateMode:AutovalidateMode.onUserInteraction,
                  maxLines: 1,
                  cursorColor: textColor,
                  controller: confirmpasswordcontroller,
                  validator: (value) {
                  if (value!.isEmpty) {
                    return 'Confirm Password *Required';
                  } else {
                    return null;
                  }
                  },
                  decoration:InputFromStyle.customDecoration(hintText: 'Confirm Password', prefixIcon: Icons.key),
                  keyboardType: TextInputType.visiblePassword,
                  style: NormalTextStyle.textStyle,
                ),
                const SizedBox(height:60,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomElevatedButton(onPressed:(){}, buttonText:'Register',horizontalpadding: 40,verticalpadding: 10,),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?',style: NormalTextStyle.textStyle,),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>const LoginPage()));
                  }, child:const Text('Login',style: NormalTextStyle.textStyle,))
                ],
              ),
              const SizedBox(height: 20,),
              ]),
            ),
          ),),
      )
    );
  }
}