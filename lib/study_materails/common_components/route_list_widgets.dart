import 'dart:io';
import 'package:are_you_shipping_me/constants/app_colors.dart';
import 'package:are_you_shipping_me/constants/app_styles.dart';
import 'package:are_you_shipping_me/study_materails/common_components/order_detail_tile.dart';
import 'package:are_you_shipping_me/study_materails/common_components/route_list_tile.dart';
import 'package:flutter/material.dart';

class RouteListComponents extends StatelessWidget {
  const RouteListComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.only(left: 14, right: 10),
          icon: Icon(
              Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Route List Components',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      body: ListView(
        padding: AppStyles.extraSmallPadding,
        children: const [
          RouteListTile(
            vehicleRegNumber: "YYX - 2837",
            destination: "New york",
            source: "West chester",
            dateTime: "10:00 AM - 6:00 PM, Feb 09",
            showDeleteButton: true,
          ),
          RouteListTile(
            vehicleRegNumber: "YYX - 2837",
            destination: "Los Angleles",
            source: "New York",
            dateTime: "10:00 AM - 6:00 PM, Feb 09",
            showDeleteButton: true,
          ),
          RouteListTile(
            vehicleRegNumber: "YYX - 2837",
            destination: "California",
            source: "New York",
            dateTime: "10:00 AM - 6:00 PM, Feb 09",
            showDeleteButton: true,
          ),



        ],
      ),
    );
  }
}
