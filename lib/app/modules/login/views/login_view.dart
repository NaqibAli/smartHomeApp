import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_office_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.hardEdge,
                alignment: AlignmentDirectional.bottomStart,
                children: [
              Positioned(
                top:-3,
                child: Image.asset('assets/images/login_img.png',
                fit: BoxFit.fill),
              ),
              Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.white ,
                    ],
                stops: [
                  0.0,
                  1.0
                ]),
              ),
              height: 430.0,
                ),
                  Container(
                    padding: EdgeInsets.only(left:35,bottom:31),
                    child: Column(
                      crossAxisAlignment : CrossAxisAlignment.start,
                      children: [
                        Text('SMART',
                            style: TextStyle(
                                fontSize: 33
                            )
                        ),
                        Text('HOME',
                            style: TextStyle(
                                fontSize: 64
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical:12),
              child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children:  [
                Row(
                  children: [
                    Text('Login into\nour Smart Home App',
                        style: TextStyle(
                            fontSize: 20
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: email,
                  style: const TextStyle(fontSize: 20,color: Color.fromRGBO(
                      40, 47, 47, 0.9725490196078431)),
                  keyboardType: TextInputType.text,
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      borderSide: BorderSide(
                          color: Colors.black12,
                          width: 10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.email),
                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,),),
                  ),
                ),
                SizedBox(height: 6,),
                TextFormField(
                  controller: password,
                  style: const TextStyle(fontSize: 20,color: Color.fromRGBO(23, 87, 122,1)),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0),
                      borderSide: BorderSide(
                          color: Colors.black12,
                          width: 10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_rounded),

                  ),
                ),
                SizedBox(height: 20,),
                Material(
                    borderRadius:BorderRadius.circular(50) ,
                    color:const Color.fromRGBO(23, 87, 122,0.85),
                    child: InkWell(
                      borderRadius:BorderRadius.circular(50) ,
                      onTap: () async {
                        try{

                          FocusScope.of(context).unfocus();
                         Get.offNamed(Routes.HOME);
                          // await loginAuth.signInWithEmailAndPassword(
                          //     email: email.text, password: password.text
                          // ).whenComplete(() => Navigator.of(context).pushAndRemoveUntil
                          //   (
                          //     MaterialPageRoute(
                          //         builder : (context) => HomeScreen(uid: loginAuth.currentUser!.uid,)
                          //     ), (route) => false
                          // ));

                        } on FirebaseException catch(error){
                          print(error.toString());
                        }
                      },
                      splashColor: const Color.fromRGBO(128, 237, 153, 1),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical:15.0, horizontal: 80),
                        child: Text('Get Started',
                          style: TextStyle(fontSize: 20, color: Colors.white
                          ),
                        ),
                      ),
                    ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account yet? '),
                    InkWell(
                      borderRadius:BorderRadius.circular(50) ,
                      child: const Text('Sign Up',
                        style: TextStyle(color: Color.fromRGBO(23, 87, 122,1)
                        ),
                      ),
                      onTap: (){
                       Get.toNamed(Routes.SINGUP);
                      },
                    ),
                  ],
                ),
              ],
            ),
                ),
              )
            ],
          ),
        )
      );
    
  }
}
