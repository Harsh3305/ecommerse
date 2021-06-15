import 'package:ecommerse/widgets/like_item.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class LikePage extends StatelessWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: (LikeProduct.products != null && LikeProduct.products.isNotEmpty)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemBuilder: (context, index) {
                final item = LikeProduct.products[index];
                return AllLikeItem(item: item);
              },
              itemCount: LikeProduct.products.length,
            )
          : Center(child: SleekCircularSlider()),
    );
  }
}
