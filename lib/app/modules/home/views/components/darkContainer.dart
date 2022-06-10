import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DarkContainer extends StatelessWidget {
  final String iconAsset;
  final VoidCallback onTap;
  final String device;
  final String deviceCount;
  final bool itsOn;
  final VoidCallback switchButton;
  const DarkContainer({
    Key? key,
    required this.iconAsset,
    required this.onTap,
    required this.device,
    required this.deviceCount,
    required this.itsOn,
    required this.switchButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: (160),
        height: (135),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: false
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ]
                : [],
            color: itsOn ? Color.fromARGB(223, 36, 32, 32) : Colors.white),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.38,
                    height: 33.23,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
                    ),
                    
                    child: SvgPicture.asset(
                      iconAsset,
                      color: itsOn ? Colors.amber : Color(0xFF808080),
                    ),
                  ),
                  GestureDetector(
                    onTap: switchButton,
                    child: Container(
                      width: 40,
                      height: 20,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        boxShadow: false
                            ? [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                )
                              ]
                            : [],
                        borderRadius: BorderRadius.circular(20),
                        color: itsOn ? Colors.transparent : Color(0xffd6d6d6),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: itsOn ? 2 : 0,
                        ),
                      ),
                      child: Row(
                        children: [
                          itsOn ? Spacer() : SizedBox(),
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                device,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: itsOn ? Colors.white : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       itsOn ? 'On' : 'Off',
              //       textAlign: TextAlign.left,
              //       style: Theme.of(context).textTheme.headline5!.copyWith(
              //             color: itsOn ? Colors.white : Colors.black,
              //           ),
              //     ),

              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
