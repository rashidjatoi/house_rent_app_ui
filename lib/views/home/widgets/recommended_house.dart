import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/views/details/detail.dart';
import 'package:house_rent/widgets/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final recommendedList = House.generateRecommended();
  RecommendedHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, top: 15),
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            var houseList = recommendedList[index];
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Detail(
                    house: recommendedList[index],
                  );
                }));
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 300,
                width: 230,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            houseList.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 15,
                      top: 15,
                      child: CircleIconButton(
                        iconUrl: 'assets/icons/mark.svg',
                        color: Colors.orange,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 80,
                        color: Colors.white54,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  houseList.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(houseList.address),
                              ],
                            ),
                            const CircleIconButton(
                              iconUrl: 'assets/icons/mark.svg',
                              color: Colors.orange,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemCount: recommendedList.length),
    );
  }
}
