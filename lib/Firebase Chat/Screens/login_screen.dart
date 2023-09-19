import 'package:angela_course_prac_repo/Firebase%20Chat/Screens/chat_screen.dart';
import 'package:angela_course_prac_repo/Firebase%20Chat/components/button.dart';
import 'package:angela_course_prac_repo/Firebase%20Chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'logIn_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  var _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProgressHUD(
        child: Builder(
        builder: (context)=> Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                  email = value;
                },
                decoration: kTextFeildDecoration,
                style: kTextFeildColor,
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                  password = value;
                },
                decoration: kTextFeildDecoration.copyWith(hintText: 'Enter your password'),
                style: kTextFeildColor,
              ),
              const SizedBox(
                height: 24.0,
              ),
              BtnWidget(btnName: 'Log In', onTap: () async{
                final progress = ProgressHUD.of(context);
                progress!.show();
                try{
                  final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                  if(user != null){
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                  progress.dismiss();
                }catch(e){
                  print(e);
                }

              }, color: Colors.lightBlueAccent)
            ],
          ),
        ),),
      ),

    );
  }
}