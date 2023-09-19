import 'package:angela_course_prac_repo/Firebase%20Chat/Screens/chat_screen.dart';
import 'package:angela_course_prac_repo/Firebase%20Chat/components/button.dart';
import 'package:angela_course_prac_repo/Firebase%20Chat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
    final _auth = FirebaseAuth.instance;
   late String email;
   late String password;

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
                style: kTextFeildColor,
                decoration: kTextFeildDecoration
              // decoration:  InputDecoration(
              //   hintText: 'Enter your email',
              //   hintStyle: TextStyle(color: Colors.grey),
              //   contentPadding:
              //   EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              //   border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              //   enabledBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              //   focusedBorder: OutlineInputBorder(
              //     borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
              //     borderRadius: BorderRadius.all(Radius.circular(32.0)),
              //   ),
              // ),
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
              obscureText: true,
            ),
            const SizedBox(
              height: 24.0,
            ),
            BtnWidget(btnName: 'Registration', onTap: () async{
              final progress = ProgressHUD.of(context);
              progress!.show();
              try{
                final userAccount = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                if(userAccount != null){
                  Navigator.pushNamed(context, ChatScreen.id);
                }
                progress.dismiss();
              }catch(e){
                print(e);
              }

            }, color: Colors.blueAccent)
          ],
        ),
      ),
        )

      ),
    );
  }
}