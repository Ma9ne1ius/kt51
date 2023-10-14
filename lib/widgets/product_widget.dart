import 'package:flutter/material.dart';
import 'package:kt51/model/car.dart';

class ProductWidget extends StatelessWidget {
  final Car car;

  const ProductWidget({super.key, required this.car}); //конструктор класса

  @override
  Widget build(BuildContext context) {
    const String FFName = 'Zeroes 3';
    return Card(
      elevation: 4,
      child: ListTile(
        isThreeLine: true,
        title: Text(
          car.brand,
          style: const TextStyle(fontFamily: FFName),
        ),
        subtitle: Text(
          car.model,
          style: const TextStyle(
              fontFamily: FFName, color: Color.fromARGB(255, 56, 56, 56)),
        ),
        trailing: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              car.price.toString(),
              style: const TextStyle(fontFamily: FFName),
            ),
          ],
        ),
      ),
    );
  }
}
