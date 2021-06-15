import 'package:ecommerse/utils/my_routes.dart';
import 'package:ecommerse/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (CartProduct.products != null && CartProduct.products.isNotEmpty)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemBuilder: (context, index) {
                final item = CartProduct.products[index];
                return AllCartItem(item: item);
              },
              itemCount: CartProduct.products.length,
            )
          : Center(child: SleekCircularSlider()),
    );
  }
}
// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// /// This is the stateful widget that the main application instantiates.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// /// This is the private State class that goes with MyStatefulWidget.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// // turn can be placed in a [Scaffold.body].
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           InkWell(
//             onTap: () {
//               if (Navigator.canPop(context)) {
//                 Navigator.pop(context);
//               } else {
//                 Navigator.pushNamed(context, MyRoutes.homeRoute);
//               }
//               setState(() {});
//             },
//             child: Image.asset("assets/images/back-arrow.png"),
//           )
//         ],
//       ),
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             expandedHeight: 200.0,
//             floating: true,
//             pinned: true,
//             snap: true,
//             actionsIconTheme: IconThemeData(opacity: 0.0),
//             flexibleSpace: Stack(
//               children: <Widget>[
//                 Positioned.fill(
//                     child: Image.asset(
//                   "assets/images/add-to-cart.png",
//                   fit: BoxFit.contain,
//                 ))
//               ],
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 20,
//               child: Center(
//                 child: Text('Scroll to see the SliverAppBar in effect.'),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Container(
//                   child: AllCartItem(
//                     item: CartProduct.products[index],
//                   ),
//                   //TODO
//                 );
//               },
//               childCount: CartProduct.products.length,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
