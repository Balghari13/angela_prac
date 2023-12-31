import 'package:angela_course_prac_repo/Firebase%20Chat/Screens/login_screen.dart';
import 'package:angela_course_prac_repo/Firebase%20Chat/Screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';



class WelcomeScreen extends StatefulWidget {
   static String id = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: Duration(seconds:1),
        vsync: this,
     // upperBound: 100,
    );
    //animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white).animate(controller);
    controller.forward();
    //controller.reverse(from: 1);
    controller.addListener(() {
        setState(() {

        });
    });
  }
  @override
  void dispose(){
    super.dispose();
    controller.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('assets/logo.png'),
                      height: 60,
                    ),
                  ),
                ),
                 TyperAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     elevation: 5.0,
            //     color: Colors.lightBlueAccent,
            //     borderRadius: BorderRadius.circular(30.0),
            //     child: MaterialButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, LoginScreen.id);
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: const Text(
            //         'Log In',
            //       ),
            //     ),
            //   ),
            // ),
            BtnWidget(btnName: 'Log In', onTap: (){
              Navigator.pushNamed(context, LoginScreen.id);
            }, color: Colors.lightBlueAccent),
            BtnWidget(btnName: 'Registration', onTap: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            }, color: Colors.blueAccent)


          ],
        ),
      ),
    );
  }
}


