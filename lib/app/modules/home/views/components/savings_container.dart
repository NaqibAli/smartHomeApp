import 'package:flutter/material.dart';

Widget SavingsContainer(
    {required BuildContext context}) {
  return Stack(
    children: [
      Container(
      clipBehavior:Clip.antiAliasWithSaveLayer,
        // height: (75) ,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.5,
              colors: [
            Color(0xD0FFFEFE),
                Color(0xB5DCD7D7),
          ],
              stops: [
                0.1,
                1,
              ]
          ),
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFA3A2A2),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (10),
            vertical: (6),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Energy Saving',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '+35%',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.green,
                        ),
                  ),
                  SizedBox(
                    height: (7),
                  ),
                  Text(
                    '23.5 kWh',
                    style: TextStyle(
                      fontSize: 14
                    ),

                  ),
                ],
              ),
              SizedBox(
                width: (90),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        child: Image.asset(
          'assets/images/thunder.png',
          height: (100),
          width: (140),
          fit: BoxFit.contain,
        ),
      ),
    ],
  );
}
