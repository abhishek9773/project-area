import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamara_shop/common/widgets/appbar/appbar.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/containers/primary_header_container.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/containers/search_container.dart';
import 'package:hamara_shop/common/widgets/texts/section_heading.dart';
import 'package:hamara_shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar:  UAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- 
            UPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar -- 
                 const UHomeAppBar(),
                 const SizedBox(height: USize.spaceBtwSections,),

                  /// -- Searchbar --         
                  const USearchContainer(text: 'Search in Store',),
                  const SizedBox(height: USize.spaceBtwSections,),

                  ///  -- Categories -- 
                   Padding(padding: EdgeInsets.only(left: USize.defaultSpace), child: Column(children: [ 
                    const USectionHeading(title: 'Popular Cetagories', showActionButton: false),
                    const SizedBox(height: USize.spaceBtwSections,),

                    ///  Categories 
                    ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index){
                        Column( 
                          children: [ 
                            Container( 
                              width: 56,
                              height: 56,
                              padding: const EdgeInsets.all(USize.sm),
                              borderRadius: BoxDecoration.circular(100),
                            )
                          ],
                        )
                      },
                      ),
                  ]),)
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

