import 'package:flutter/material.dart';
import 'package:flutterdemo/passenger_pages/SignupPage/signup_page_passenger.dart';
import 'package:sign_button/sign_button.dart';

import '../../globalComponents/main_text_field.dart';

class LoginPagePassenger extends StatefulWidget {
  const LoginPagePassenger({Key? key}) : super(key: key);

  @override
  State<LoginPagePassenger> createState() => _LoginPagePassengerState();
}

class _LoginPagePassengerState extends State<LoginPagePassenger> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('SaathChalo          ')),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0, right: 90, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,)),
                      Text(" as Passenger", style: TextStyle(fontSize: 28)),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 138),
                  child: Text("Please login to continue", style: TextStyle(fontSize: 17)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 32,right: 32,left: 32),
                  child: Column(
                    children:  const [
                      MainTextField(labelText: "E-mail",hintText: "e.g. john@gmail.com",),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: MainTextField(labelText: "Password",hintText: "",),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only( right: 20, left: 20),
                  child: Row(
                  children: [
                    Checkbox(value: checkBoxVal,
                        side: const BorderSide(color: Color(0xffDCDEDF)),
                        checkColor: Colors.white,
                        activeColor: const Color(0xffF65E5D),
                        onChanged:(value){
                            setState(() {
                              checkBoxVal=value as bool;
                            });
                         }
                        ),
                    const Text("Remember Me", style: TextStyle(fontSize: 13, color: Color(0xffF65E5D))),
                    const SizedBox(width: 100),
                    GestureDetector(
                      onTap: (){

                      },
                        child: const Text("Forgot Password?",
                            style: TextStyle(fontSize: 13, color: Color(0xff0000EE))
                        )
                    ),
                  ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: MainButton(text: "Login",),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25,right: 25, left: 25),
                  child: Row(
                    children: const [
                      Expanded(child: Divider(color: Colors.black)),
                      Text("   Or Login With    "),
                      Expanded(child: Divider(color: Colors.black)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SignInButton.mini(
                        buttonType: ButtonType.facebook,
                        onPressed: () {

                        },
                      ),
                      SignInButton.mini(
                        buttonType: ButtonType.google,
                        onPressed: () {

                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Do not have an account?"),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>SignupPassenger())
                          );
                        },
                        child: const Text("Sign Up",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffF65E5D),
                                fontWeight: FontWeight.w900
                            )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
    this.width = 360,
    this.height = 50
  }) : super(key: key);
  final String text;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: () {
      },
          child: Text(text, style: const TextStyle(fontSize: 18))
      ),
    );
  }
}

