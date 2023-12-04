import 'package:flutter/material.dart';
import 'package:hamara_shop/common/widgets/appbar/appbar.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/containers/primary_header_container.dart';
import 'package:hamara_shop/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:hamara_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar:  UAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UPrimaryHeaderContainer(
              child: Column(
                children: [
                  UHomeAppBar()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

