import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: const [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  content: '5 Bedroom\n3 Master Bedroom'),
              SizedBox(width: 30),
              MenuInfo(
                  imageUrl: 'assets/icons/bathroom.svg',
                  content: '5 Bathroom\n3 Toilet'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              MenuInfo(
                  imageUrl: 'assets/icons/kitchen.svg',
                  content: '2 Kitchen\n120 sqft'),
              SizedBox(width: 30),
              MenuInfo(
                  imageUrl: 'assets/icons/parking.svg',
                  content: '2 Parking\n120 sqft'),
            ],
          )
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(
              imageUrl,
              color: Colors.black,
            ),
            const SizedBox(width: 20),
            Text(
              content,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
