import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/product.dart';

class Product_card extends StatelessWidget {
  const Product_card({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12, // Shadow color
                    offset: Offset(0, 8), // Offset in the x, y direction
                    blurRadius: 25, // Blur radius
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Container(
                  height: 166.0,
                  width: 200.0,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(product.subTitle,
                            style: Theme.of(context).textTheme.caption),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          child: Container(
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text('السعر: \$${product.price} '),
                          ),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
