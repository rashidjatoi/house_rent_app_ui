import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';
import 'package:house_rent/views/details/detail.dart';
import 'package:house_rent/widgets/circle_icon_button.dart';

class BestOffer extends StatelessWidget {
  final bottomRecommended = House.generateRecommendedOffer();

  BestOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Offer',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...bottomRecommended.map((el) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Detail(house: el);
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(el.imageUrl),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                el.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                el.address,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Positioned(
                        right: 0,
                        child: CircleIconButton(
                          iconUrl: 'assets/icons/heart.svg',
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
