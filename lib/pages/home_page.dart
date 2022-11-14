import 'package:flutter/material.dart';
import 'package:furniture_shop/pages/detail_product_page.dart';
import 'package:furniture_shop/widgets/category_button.dart';
import 'package:furniture_shop/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Image.asset("assets/icons/home.png")),
          Image.asset("assets/icons/cart.png"),
          Image.asset("assets/icons/star.png"),
          Image.asset("assets/icons/profile.png"),
        ]),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.085,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/icons/menu.png"),
                  const Text("Home",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      )),
                  Image.asset("assets/icons/search.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover the most",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "modern furniture",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 6.0)),
            SizedBox(
              // color: Colors.blue,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryButton(
                    text: "All",
                    isActivated: true,
                  ),
                  CategoryButton(text: "Living Room"),
                  CategoryButton(text: "Bedroom"),
                  CategoryButton(text: "Dining Room"),
                  CategoryButton(text: "Kitchen"),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Recommended Furnitures",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 4.0,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.6),
                crossAxisSpacing: 8.0,
                shrinkWrap: true,
                padding: const EdgeInsets.all(8.0),
                crossAxisCount: 2,
                children: [
                  ...[1, 2, 3, 4]
                      .map(
                        (e) => InkWell(
                            onTap: () => Navigator.of(context).pushNamed(
                                  DetailProductPage.routeName,
                                ),
                            child: const ProductCard()),
                      )
                      .toList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
