import 'package:carter/common/widgets/appbar/appbar.dart';
import 'package:carter/common/widgets/appbar/tabbar.dart';
import 'package:carter/common/widgets/brand/brand_card.dart';
import 'package:carter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:carter/common/widgets/layouts/grid_layout.dart';
import 'package:carter/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:carter/common/widgets/texts/section_heading.dart';
import 'package:carter/features/shop/screens/store/widgets/category_tab.dart';
import 'package:carter/utils/constants/palette.dart';
import 'package:carter/utils/constants/sizes.dart';
import 'package:carter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppStore extends StatelessWidget {
  const AppStore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CarterAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            ECartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  backgroundColor: CarterHelperFunctions.isDarkMode(context)
                      ? CarterPalette.black
                      : CarterPalette.white,
                  expandedHeight: 440,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(CarterSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        ///searchbox
                        SizedBox(
                          height: CarterSizes.spaceBtwItems,
                        ),
                        ESearchBox(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackgroundColor: false,
                          padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: CarterSizes.spaceBtwSections,
                        ),

                        ///Featured Headings
                        ESectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: CarterSizes.spaceBtwItems / 1.5,
                        ),
                        EGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return EBrandCard();
                            })
                      ],
                    ),
                  ),

                  ///Tabs
                  bottom: const CarterTabBar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Sports"),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
                ECategoryTab(),
              ],
            )),
      ),
    );
  }
}






