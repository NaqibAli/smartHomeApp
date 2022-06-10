import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {

TextEditingController usernameController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: (20),
              // top: (15),
              right: (20),
              bottom: (15),
            ),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: (40),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: Row(
                    children: [
                      const Text(
                        'Edit Profile',
                        // style: Theme.of(context).textTheme.headline1,
                        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: (25),
                ),
                Center(
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBDBDBD).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.only(
                      left: (15),
                      top: (15),
                      right: (15),
                      bottom: (40),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Upload image',
                          // style: Theme.of(context).textTheme.headline1,
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: (15),
                        ),
                        DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(20),
                          dashPattern: const [7, 7],
                          color: Colors.black38,
                          strokeWidth: 2,
                          // padding: EdgeInsets.fromLTRB(115, 37, 115, 37),
                          padding: EdgeInsets.fromLTRB(
                              (25),
                              (25),
                              (25),
                              (25)),
                          child: Text("S"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: (20),
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: nameController,
                        autofocus: false,
                        textCapitalization: TextCapitalization.words,
                        validator: (value) {
                          if (value!.isEmpty || value.trim().isEmpty) {
                            return 'Name is required';
                          }
                          return null;
                        },
                        cursorColor: Colors.black12,
                        decoration: InputDecoration(
                          hintText: 'Your full name',
                          hintStyle: const TextStyle(color: Colors.grey),
                          icon: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          // prefixIcon: Icon(Icons.person, size: 25, color: Colors.grey,),
                          // contentPadding: EdgeInsets.only(left: 30),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          enabled: true,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (20),
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: usernameController,
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        validator: (value){
                          if(value!.isEmpty || value.trim().isEmpty){
                            return 'Username is required';
                          }
                          return null;
                        },
                        cursorColor: Colors.black12,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(color: Colors.grey),
                          icon: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          enabled: true,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (20),
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        autofocus: false,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value){
                          if(value!.isEmpty || value.trim().isEmpty){
                            return 'Email is required';
                          }
                          return null;
                        },
                        cursorColor: Colors.black12,
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                          hintStyle: const TextStyle(color: Colors.grey),
                          icon: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabled: true,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (20),
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: phoneController,
                        autofocus: false,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if(value!.isEmpty || value.trim().isEmpty) {
                            return 'Phone no. is required';
                          }
                          return null;
                        },
                        cursorColor: Colors.black12,
                        decoration: InputDecoration(
                          hintText: 'Your Phone',
                          hintStyle: const TextStyle(color: Colors.grey),
                          icon: Container(
                            height: 50,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          enabled: true,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: (20),
                ),
                Container(
                  height: (50),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text('Save Changes', style: TextStyle(fontSize: 18, color: Colors.white70, fontWeight: FontWeight.bold),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
