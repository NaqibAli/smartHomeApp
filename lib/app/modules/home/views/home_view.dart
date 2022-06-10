import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:smart_office_app/app/modules/home/views/components/add_device_widget.dart';
import 'package:smart_office_app/app/modules/home/views/components/darkContainer.dart';
import 'package:smart_office_app/app/modules/home/views/components/savings_container.dart';
import 'package:smart_office_app/app/modules/home/views/components/weather_container.dart';
import 'package:smart_office_app/widgets/custom_bottom_nav_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController controller = Get.put(HomeController());
  TextEditingController roomController = TextEditingController();
  TextEditingController devicenameController = TextEditingController();
  void ShowCustomModalBottomSheet(context, {roomNo = 1}) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )),
        builder: (ctx) => Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add new Device',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: TextFormField(
                      controller: devicenameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          border: OutlineInputBorder(),
                          hintText: 'Eg. Light 1'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Obx(() => Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => controller.changeSelectedType('Lamp'),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: controller.selectedType.value == 'Lamp'
                                      ? Color.fromARGB(255, 31, 160, 37)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[200]!,
                                        offset: Offset(0, 1),
                                        blurRadius: 10,
                                        spreadRadius: 5)
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'assets/icons/svg/light.svg',
                                      color: controller.selectedType.value ==
                                              'Lamp'
                                          ? Colors.white
                                          : Color(0xFF808080),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Lamp',
                                      style: TextStyle(
                                          color:
                                              controller.selectedType.value ==
                                                      'Lamp'
                                                  ? Colors.white
                                                  : Color(0xFF808080)))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.changeSelectedType('Fan'),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: controller.selectedType.value == 'Fan'
                                      ? Color.fromARGB(255, 31, 160, 37)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[200]!,
                                        offset: Offset(0, 1),
                                        blurRadius: 10,
                                        spreadRadius: 5)
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'assets/icons/svg/fan.svg',
                                      color:
                                          controller.selectedType.value == 'Fan'
                                              ? Colors.white
                                              : Color(0xFF808080),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Fan',
                                      style: TextStyle(
                                          color:
                                              controller.selectedType.value ==
                                                      'Fan'
                                                  ? Colors.white
                                                  : Color(0xFF808080)))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.changeSelectedType('Ac'),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: controller.selectedType.value == 'Ac'
                                      ? Color.fromARGB(255, 31, 160, 37)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[200]!,
                                        offset: Offset(0, 1),
                                        blurRadius: 10,
                                        spreadRadius: 5)
                                  ]),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset(
                                      'assets/icons/svg/ac.svg',
                                      color:
                                          controller.selectedType.value == 'Ac'
                                              ? Colors.white
                                              : Color(0xFF808080),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'AC',
                                    style: TextStyle(
                                        color: controller.selectedType.value ==
                                                'Ac'
                                            ? Colors.white
                                            : Color(0xFF808080)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  Obx(
                    () => Text(
                      controller.error.toString(),
                      style: TextStyle(color: Colors.red, fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.blue[400],
                          shadowColor: Colors.transparent),
                      onPressed: () {
                        controller.createRoomDevice(
                            devicenameController.text, roomNo);
                        devicenameController.text = '';
                        Navigator.pop(context);
                      },
                      child: Text("Submit"),
                    ),
                  )
                ],
              ),
            ));
  }

  void showdialog(context) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Add New Room'),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: TextFormField(
                      controller: roomController,
                      validator: (value) {
                        if (value!.isEmpty || value != '') {
                          return 'Room Name Required';
                        }
                        return '';
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: 'Room Name',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                          primary: Colors.blue[400],
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {
                          controller.createRoom(roomController.text);
                          roomController.text = '';
                          Navigator.pop(context);
                        },
                        child: Text("Submit")),
                  )
                ],
              ),
            ));
  }

  getDevices(DataSnapshot e) {
    var devices =e.child("devices").children;
    print(devices);
    devices.forEach((e) => print(e.toString()));
    return Text('data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<DatabaseEvent>(
        stream: controller.dbref.onValue,
        builder: (context, snapshots) {
          if (snapshots.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshots.hasData &&
              snapshots.data?.snapshot.value != null) {
            final rooms = snapshots.data?.snapshot;
            var roomMap = snapshots.data?.snapshot.value as List;
            // roomMap.forEach((element) {print(element?['devices']);});

            return DefaultTabController(
              length: rooms?.children.length ?? 0,
              child: Scaffold(
                backgroundColor: Color(0xFFE5E5E5),
                appBar: AppBar(
                  backgroundColor: Color(0xFFE5E5E5),
                  automaticallyImplyLeading: false,
                  toolbarHeight: 60,
                  //centerTitle: true,
                  elevation: 0,
                  actions: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 20,
                        onPressed: () {
                          showdialog(context);
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        )),
                    ClipRRect(
                      borderRadius: new BorderRadius.circular(10.0),
                      child: ClipRRect(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/empty_avatar.png'),
                        ),
                      ),
                    ),
                  ],
                  title: Text(
                    'Hi, Guest',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  bottom: PreferredSize(
                    child: TabBar(
                      padding: EdgeInsets.only(bottom: 10),
                      indicator:
                          CircleTabIndicator(color: Colors.grey, radius: 4),
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey.withOpacity(0.3),
                      indicatorColor: Color(0xFF464646),
                      tabs: snapshots.data?.snapshot.children
                              .map((e) => Tab(
                                    child: Text(
                                      e.child('name').value.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ))
                              .toList() ??
                          [],
                    ),
                    preferredSize: Size.fromHeight(
                      35,
                    ),
                  ),
                ),
                body: TabBarView(
                  children: snapshots.data?.snapshot.children.map((e) {
                        //  var devices  = e.child('devices').value  as List;
                        // print("HELLo : "+ devices.length.toString() );

                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: (7),
                            vertical: (7),
                          ),
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              getDevices(e),
                              // e.child('devices').children.map((e) {
                              //         // print(e.key);
                              //         return Padding(
                              //           padding: EdgeInsets.all((5)),
                              //           child: DarkContainer(
                              //             itsOn: false,
                              //             switchButton: () {},
                              //             onTap: () {},
                              //             iconAsset:
                              //                 'assets/icons/svg/light.svg',
                              //             device: 'Lamp 1',
                              //             deviceCount: '16 device',
                              //           ),
                              //         );
                              //       })

                              Padding(
                                padding: EdgeInsets.all((8)),
                                child: AddNewDevice(context, () {
                                  ShowCustomModalBottomSheet(context,
                                      roomNo: e.key);
                                }),
                              ),
                            ],
                          ),
                        );
                      }).toList() ??
                      [
                        Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: (7),
                              vertical: (7),
                            ),
                            decoration: BoxDecoration(),
                            child: Column(
                              children: [Text('No Devices Found')],
                            ))
                      ],

                  // [
                  //   Container(
                  //     padding: EdgeInsets.symmetric(
                  //       horizontal: (7),
                  //       vertical: (7),
                  //     ),
                  //     decoration: BoxDecoration(),
                  //     child: Column(
                  //       children: [
                  //         Padding(
                  //           padding: EdgeInsets.all((0)),
                  //           child: WeatherContainer(context: context),
                  //         ),
                  //         SizedBox(
                  //           height: 20,
                  //         ),
                  //         Row(
                  //           children: [
                  //             Expanded(
                  //               child: Padding(
                  //                 padding: EdgeInsets.all((5)),
                  //                 child: DarkContainer(
                  //                   itsOn: false,
                  //                   switchButton: () {},
                  //                   onTap: () {},
                  //                   iconAsset: 'assets/icons/svg/light.svg',
                  //                   device: 'Lamp 1',
                  //                   deviceCount: '16 device',
                  //                 ),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               child: Padding(
                  //                 padding: EdgeInsets.all((5)),
                  //                 child: DarkContainer(
                  //                   itsOn: true,
                  //                   switchButton: () {},
                  //                   onTap: () {},
                  //                   iconAsset: 'assets/icons/svg/ac.svg',
                  //                   device: 'AC 1',
                  //                   deviceCount: '1 devices',
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         Row(
                  //           children: [
                  //             Expanded(
                  //               child: Padding(
                  //                 padding: EdgeInsets.all((5)),
                  //                 child: DarkContainer(
                  //                   itsOn: true,
                  //                   switchButton: () {},
                  //                   onTap: () {},
                  //                   iconAsset: 'assets/icons/svg/speaker.svg',
                  //                   device: 'Speaker',
                  //                   deviceCount: '1 device',
                  //                 ),
                  //               ),
                  //             ),
                  //             Expanded(
                  //               child: Padding(
                  //                 padding: EdgeInsets.all((5)),
                  //                 child: DarkContainer(
                  //                   itsOn: false,
                  //                   switchButton: () {},
                  //                   onTap: () {},
                  //                   iconAsset: 'assets/icons/svg/fan.svg',
                  //                   device: 'Fan',
                  //                   deviceCount: '2 devices',
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.all((8)),
                  //           child: AddNewDevice(context, () {
                  //             ShowCustomModalBottomSheet(context);
                  //           }),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  //   Container()
                  // ],
                ),
                bottomNavigationBar: CustomBottomNavBar(
                    currentIdx: controller.currentIdx,
                    onTap: controller.changeIdx),
              ),
            );
          } else {
            return Center(child: Text('No Data Found From the Server'));
          }
        },
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _painter;
  }
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
