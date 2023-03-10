import 'package:are_you_shipping_me/constants/app_styles.dart';
import 'package:are_you_shipping_me/study_materails/calendar.dart';
import 'package:are_you_shipping_me/study_materails/calendar_month.dart';
import 'package:are_you_shipping_me/study_materails/chat/chat.dart';
import 'package:are_you_shipping_me/study_materails/common_components/common_components_list.dart';
import 'package:are_you_shipping_me/study_materails/map/all_map_options.dart';
import 'package:are_you_shipping_me/widgets/app_bars/app_bar_default.dart';
import 'package:are_you_shipping_me/widgets/drop_downs/all_dropdowns.dart';
import 'package:are_you_shipping_me/widgets/pickers/all_pickers.dart';
import 'package:are_you_shipping_me/widgets/rating_bars/all_rating_bars.dart';
import 'package:are_you_shipping_me/widgets/text_fields/all_textfields.dart';
import 'package:flutter/material.dart';

class AllWidgets extends StatelessWidget {
  const AllWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDefault('All Widgets'),
      body: SingleChildScrollView(
        padding: AppStyles.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllTextFields()));
                },
                child: const Text('Text Field')), ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllDropDowns()));
                },
                child: const Text('DropDowns')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllPickers()));
                },
                child: const Text('All Pickers')),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DailyScheduleScreen()),
              );
            }, child:const Text("Calendar")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MonthWiseCalendar()),
              );
            }, child:const Text("Month Wise Calendar")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AllMapOptions()),
              );
            }, child:const Text("All Map Options")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllRatingBars()));
                },
                child: const Text('All Rating Bars')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                child: const Text('Chats')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CommonComponents()));
                },
                child: const Text('Common-Components')),
          ],
        ),
      ),
    );
  }
}
