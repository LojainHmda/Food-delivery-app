import 'package:flutter/material.dart';
import 'package:food_delivery/core/models/productes.dart';
import 'package:food_delivery/features/home_page.dart';

import 'bottom_bar.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({required this.item});
  final ProductsModel item;

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          const SizedBox(height:1000),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.orange[100]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(widget.item.imgUrl),
                Text(widget.item.name,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text(widget.item.description),
                Text("${widget.item.price}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.item.isFav = !widget.item.isFav;
                    if (widget.item.isFav) {
                      favFood.add(widget.item);
                    }
                  });
                },
                icon: Icon(
                  size: 40,
                  widget.item.isFav ? Icons.favorite : Icons.favorite_border,
                  color: widget.item.isFav ? Colors.red : Colors.black,
                )),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                icon: const Icon(
                  size: 40,
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                )),
          ),
        ]),
      ),
    );
  }
}
