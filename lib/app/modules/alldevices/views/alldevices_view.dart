import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/alldevices_controller.dart';

class AlldevicesView extends GetView<AlldevicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'My Devices',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.close,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: (15),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: (5),
                  ),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 232, 232, 232),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: false
                            ? Color.fromRGBO(45, 45, 45, 1)
                            : Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/svg/light.svg',
                        color:false?  Colors.amber:Colors.grey,
                      ),
                    ),
                      title: Text("Lamp"),
                      subtitle: Text("on"),
                    ),
                  ),
                ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: (5),
                  ),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 232, 232, 232),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: ListTile(
                      leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: false
                            ? Color.fromRGBO(45, 45, 45, 1)
                            : Color.fromARGB(255, 241, 241, 241),
                        borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/svg/ac.svg',
                        color:false?  Colors.amber:Colors.grey,
                      ),
                    ),
                      title: Text("AC"),
                      subtitle: Text("on"),
                    ),
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
