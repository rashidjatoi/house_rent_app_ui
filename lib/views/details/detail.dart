import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/views/details/widgets/content_intro.dart';
import 'package:house_rent/views/details/widgets/details_app_bar.dart';
import 'package:house_rent/views/details/widgets/house_info.dart';

class Detail extends StatelessWidget {
  final House house;
  const Detail({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsAppBar(house: house),
            const SizedBox(height: 20),
            ContentIntro(house: house),
            const SizedBox(height: 20),
            const HouseInfo()
          ],
        ),
      ),
    );
  }
}
