import 'package:flutter/material.dart';
import 'package:house_rent/views/home/widgets/best_offer.dart';
import 'package:house_rent/views/home/widgets/categories.dart';
import 'package:house_rent/views/home/widgets/custom_appbar.dart';
import 'package:house_rent/views/home/widgets/custom_botton_navigation.dart';
import 'package:house_rent/views/home/widgets/recommended_house.dart';
import 'package:house_rent/views/home/widgets/search_bar.dart';
import 'package:house_rent/views/home/widgets/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(),
              const SizedBox(height: 12),
              const SearchBar(),
              const SizedBox(height: 12),
              const Categories(),
              RecommendedHouse(),
              BestOffer(),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigation(),
      ),
    );
  }
}
