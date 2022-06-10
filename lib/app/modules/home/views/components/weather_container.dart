import 'package:flutter/material.dart';

Widget WeatherContainer(
    {required BuildContext context})
{
  return Stack(
    children: [
      Container(
        height: (100),
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0,1),
              color: Colors.grey.withOpacity(.2)
            )
          ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (20),
            vertical: (6),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  '28\°C',
                  style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.green),
                ),
                SizedBox(
                  height: (5),
                ),
                
                
                Text(
                  'Weather Now',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey[400]),
                ),
               
                Text(
                  '27 Mar',
                  style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.grey[600],fontWeight: FontWeight.w500),
                ),
                
               
              ],
            ),
          ),
        ),
      ),
      Image.asset(
        'assets/images/weather/1.png',
        height: (100),
        width: (100),
        fit: BoxFit.contain,
      ),
    ],
  );
}
