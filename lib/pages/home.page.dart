import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';
import '../widgets/banner/banner.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          // color: Color(0xFFF5F5F5),
          child: Wrap(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  SearchBox(),
                  SizedBox(
                    height: 10,
                  ),
                  BannerHome(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    child: CategoryList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Selling",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See All"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    child: ProductList(
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
                // child: Text("Home Page"),
              ),
            ],
          )),
    );
  }
}
