import 'package:flutter/material.dart';
import 'package:phone_market/constants.dart';
import 'package:phone_market/models/product.dart';
import 'package:phone_market/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: Detailsbody(
        product: product,
      ),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'BACK',
        // ignore: deprecated_member_use
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
