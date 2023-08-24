import 'package:flutter/material.dart';


class AddImgFonts extends StatelessWidget {
  const AddImgFonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Added fonts & Img'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Colors.red, width: 100,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image(
                    //for image using internet
                    //image: NetworkImage('https://plus.unsplash.com/premium_photo-1661763150703-149671deb82c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),

                    //image form local without internet
                    image: AssetImage('assets/images/diamond.png'),height: 100,width: 100,

                  ),
                ),
                Text('Najmuddin balghari', style: TextStyle(
                    fontFamily: 'Pacifico'
                ),),
              ],
            ),
            Container(
              width: 100,
              color: Colors.green,),
          ],
        ),
      ),
    );
  }
}
