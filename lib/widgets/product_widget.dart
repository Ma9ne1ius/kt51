import 'package:flutter/material.dart';
import 'package:kt51/model/car.dart';

class Parser {
  Map<String, Color> parserColor = {
    'Maroon': Color(0xff800000),
    'Yellow': Colors.yellow,
    'Red': Colors.red,
    'Violet': Color(0xffee82ee),
    'Purple': Colors.purple,
    'Indigo': Colors.indigo,
    'Teal': Colors.teal,
    'Pink': Colors.pink,
    'Aquamarine': Color(0xff7fffd4),
    'Green': Colors.green,
    'Mauv': Color.fromARGB(255, 128, 128, 128),
    'Turquoise': Color(0xff40E0D0),
    'Blue': Colors.blue,
    'Puce': Color(0xffA95C68),
    'Orange': Colors.orange,
    'Khaki': Color(0xffF0E68C),
    'Fuscia': Color(0xffea07d9),
    'Goldenrod': Color(0xffDAA520),
    'Crimson': Color(0xffDC143C),
  };
  Color? toParse(String string) {
    return parserColor[string];
  }
}

class ProductWidget extends StatelessWidget {
  final Car car;

  const ProductWidget({super.key, required this.car}); //конструктор класса

  @override
  Widget build(BuildContext context) {
    String strResult = car.availability ? 'In Stock' : 'Not In Stock';
    Color? carColor = Parser().toParse(car.color);

    // Color color = Color.parse(carColor);
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
          "${car.model}, $strResult",
          style: const TextStyle(
              fontFamily: FFName, color: Color.fromARGB(255, 56, 56, 56)),
        ),
        trailing: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.star, size: 26, color: carColor),
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
