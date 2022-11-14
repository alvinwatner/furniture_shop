import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  static const routeName = 'detail-product';
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            title: const Text(
              "Detail",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/images/sofa.png",
              fit: BoxFit.cover,
            ) //Images.network
                ), //FlexibleSpaceBar
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              tooltip: 'Menu',
              onPressed: () {
                Navigator.pop(context);
              },
            ), //IconButton
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(4.0),
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              ), //IconButton
              Image.asset('assets/icons/share.png'),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      width: 30,
                      height: 5,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Wooden Coff",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "\$240",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Image.asset('assets/images/score.png'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "choose a color",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      Image.asset('assets/images/color_pallete.png'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Select Quality",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      Image.asset('assets/images/qty.png'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Image.asset('assets/images/desc.png'),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Container(
                     padding: const EdgeInsets.all(12.0),
                     margin: const EdgeInsets.all(12.0),
                     width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      color: Colors.grey,
                    ),
                    child: const  Center(
                      child:  Text(
                        "Select Quality",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
