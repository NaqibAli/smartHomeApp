import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_office_app/app/routes/app_pages.dart';

Widget CustomBottomNavBar({
  int currentIdx = 0,
 required  void onTap(int idx)
}) {
  var routes = [Routes.HOME, Routes.ALLDEVICES, Routes.PROFILE];

  return BottomNavigationBar(
    currentIndex: currentIdx,
    selectedItemColor: Colors.black,
    elevation: 0,
    onTap: (idx) {
      onTap(idx);
      Get.toNamed(routes[idx]);
    },
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.home),
        backgroundColor: Colors.white,
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.auto_graph_rounded),
        backgroundColor: Colors.lightBlue,
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.person_rounded),
        backgroundColor: Colors.lightBlue,
      ),
    ],
  );
}
