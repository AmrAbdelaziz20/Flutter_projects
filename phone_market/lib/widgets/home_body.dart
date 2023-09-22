import 'package:flutter/material.dart';
import 'package:phone_market/constants.dart';
import 'package:phone_market/models/product.dart';
import 'package:phone_market/screens/details_screen.dart';
import 'package:phone_market/widgets/product_cart.dart';

class Homebody extends StatelessWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  // ignore: prefer_const_constructors
                  itemBuilder: (context, index) => Product_card(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
