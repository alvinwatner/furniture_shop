import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ADDING COMMENT
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
          child: AspectRatio(
            aspectRatio: 1.3,
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
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        color: Colors.white),
                    padding: const EdgeInsets.all(4.0),
                    child: const Icon(
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
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(15.0))),
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
