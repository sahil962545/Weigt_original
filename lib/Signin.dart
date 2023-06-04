
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weight/Signup.dart';
import 'package:weight/mainpage.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState  createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(

        image:AssetImage('assets/login.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 35 ,top: 130),

                child: Text('Welcome\nBack' , style: TextStyle(color: Colors.white , fontSize: 33),),
                 ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding:EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.5,
                    left: 35,
                    right: 35,
                  ),

                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => mainpage(),));

                          }, child: Text("Sign In" , style: TextStyle(color: Colors.blue , fontSize: 22,fontWeight: FontWeight.bold),)),

                          ElevatedButton(onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  Signup(),
                                ));

                          }, child: Text('Signup',style: TextStyle(color: Colors.blue , fontSize: 22,fontWeight: FontWeight.bold),))
                        ],
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
