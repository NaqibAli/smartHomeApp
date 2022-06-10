
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

Widget AddNewDevice(BuildContext context,VoidCallback onPressed) {
  return InkWell(
    onTap:onPressed ,
    child: Container(
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(10),
        padding: EdgeInsets.all(
          (5),
        ),
        color: Color(0xFFBDBDBD),
        strokeWidth: 1,
        dashPattern: [10, 3],
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: (60),
            width: double.maxFinite,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Color(0xFFC0C0C0),
                  size: 26,
                ),
                SizedBox(width: 5,),
                Text(
                  'Add New Device',
                  style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20, color: Color(0xFFC0C0C0),),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
