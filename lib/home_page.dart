import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
                  Text("Home",
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
                        (e) => const ProductCard(),
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

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
          child: AspectRatio(
            aspectRatio: 1.2,
            child: Stack(children: [
              Image.asset(
                'assets/images/dummy1.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        color: Colors.white),
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    ),
                  ))
            ]),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stylish chair",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("\$170",
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text("58",
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;
  final bool isActivated;
  const CategoryButton({
    Key? key,
    required this.text,
    this.isActivated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isActivated)
        ? Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
  }
}
