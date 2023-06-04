
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:weight/mainpage.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(

              image:AssetImage('assets/register.png'),
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

                child: Text('Create\nAccount' , style: TextStyle(color: Colors.white , fontSize: 33),),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding:EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.4,
                    left: 35,
                    right: 35,
                  ),

                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                        height: 20,
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


                          ElevatedButton(onPressed: (){

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  mainpage(),
                                ));

                          }, child: Text('Create Account',style: TextStyle(color: Colors.blue , fontSize: 22,fontWeight: FontWeight.bold),))
                        ],
                      )


                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
