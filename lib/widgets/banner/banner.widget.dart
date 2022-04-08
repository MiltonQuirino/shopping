import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {
  BannerHome({Key? key}) : super(key: key);

  final List<String> imageList = [
    "https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/LG50NANO75SPA/LG50NANO75SPA_PRD_447_1.jpg",
    "https://www.fastshop.com.br/wcsstore/FastShopCAS/imagens/_AD_Audio/JBLXTREME3PTO/JBLXTREME3PTO_PRD_1500_1.jpg",
    "https://www.fastshop.com.br//wcsstore/FastShopCAS/imagens/_VD_Video/SGUN32T430PTO/V3/SGUN32T430PTO_PRD_447_1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        autoPlay: true,
      ),
      items: imageList
          .map((e) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      e,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
