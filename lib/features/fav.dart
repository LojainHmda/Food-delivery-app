import 'package:flutter/material.dart';
import 'package:food_delivery/core/models/productes.dart';

class FavScreen extends StatefulWidget {
  FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: favFood.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.orange[100]),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    favFood[index].imgUrl,
                  ),
                ),
                Text(favFood[index].name),
                Text("${favFood[index].price}"),
                Container(
                  width: double.infinity,
                  color:  Colors.grey[200],
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          favFood[index].isFav = !favFood[index].isFav;
                          favFood.remove(favFood[index]);
                        });
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
