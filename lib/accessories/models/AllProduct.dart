import 'package:flutter/material.dart';
import 'package:shopping_app/accessories/models/Products.dart';
import 'package:shopping_app/variables.dart';

class AllProduct extends StatefulWidget {
  @override
  _AllProductState createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: kDefaultPaddin,
              mainAxisSpacing: kDefaultPaddin),
          itemBuilder: (context, index) => Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: Colors.green, width: 0.5),
                      borderRadius: BorderRadius.circular(19),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1.5,
                            blurRadius: 7,
                            offset: Offset(0, 2))
                      ]),
                  child: Image.asset(
                    products[0].image,
                    //fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(
                    products[0].title,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
                Text(
                  "\$234",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
