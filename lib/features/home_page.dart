import 'package:flutter/material.dart';
import 'package:food_delivery/core/models/categories_model.dart';
import 'package:food_delivery/core/models/productes.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String? selectedcategoryId;

  late List<ProductsModel> filteredFood;
  @override
  void initState() {
    super.initState();
    filteredFood = food;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/classic_burger.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedcategoryId = categories[index].id;
                          filteredFood = food.where((element) => element.category.id == selectedcategoryId ).toList();
                        });
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: selectedcategoryId == categories[index].id
                              ? const Color.fromARGB(255, 241, 152, 18)
                              : Colors.orange[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(categories[index].imageUrl,
                                  height: 50, width: 50),
                            ),
                            Text(
                              categories[index].name,
                              style: TextStyle(
                                  color:
                                      selectedcategoryId == categories[index].id
                                          ? Colors.white
                                          : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredFood.length,
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
                      Image.network(
                        filteredFood[index].imgUrl,
                        height: 130,
                        width: 130,
                      ),
                      Text(filteredFood[index].name),
                      Text("${filteredFood[index].price}"),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
