import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailProductPage extends StatelessWidget {
  static const routeName = 'detail-product';
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            title: Text("Detail", style: TextStyle(color: Colors.black),),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/sofa.png",
                  fit: BoxFit.cover,
                ) //Images.network
                ), //FlexibleSpaceBar
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black,),
              tooltip: 'Menu',
              onPressed: () {},
            ), //IconButton
            actions: <Widget>[
              Container(
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
                  ), //IconButton
              Image.asset('assets/icons/share.png'),
            ], //<Widget>[]
          ), //SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ), //SliverChildBuildDelegate
          ) //SliverList
        ], //<Widget>[]
      ) ),
    );
  }
}
