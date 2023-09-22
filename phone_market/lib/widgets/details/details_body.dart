import 'package:flutter/material.dart';
import 'package:phone_market/constants.dart';
import 'package:phone_market/models/product.dart';
import 'package:phone_market/widgets/details/product_image.dart';
import 'color_dot.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      // Wrap with SingleChildScrollView
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding) * 1.5,
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: product_image(
                    size: size,
                    image: product.image,
                  ),
                ),
                // Add more content here as needed
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(
                        fillColor: kTextLightColor,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor: kblue,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor: kred,
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.title,
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  'السعر: \$${product.price}',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(height: kDefaultPadding)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 2),
            child: Text(
              product.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
