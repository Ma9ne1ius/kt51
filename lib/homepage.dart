import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kt51/core/network_data_status.dart';
import 'package:kt51/getsomethingfromlist.dart';
import 'package:kt51/model/car.dart';
import 'package:kt51/model/carsdata.dart';
import 'package:kt51/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = 'https://myfakeapi.com/api/cars';
  var client = Dio();
  var networkStatus = NetworkDataStatus.values[0];
  var cars = <Car>[];

  Future<void> getNetworkData() async {
    networkStatus = NetworkDataStatus.loading;
    setState(() {});
    var response = await client.get(url);

    cars = CarsData.fromJson(response.data).cars;

    networkStatus = NetworkDataStatus.success;
    setState(() {});
  }

  @override
  void initState() {
    print('INIT');
    // запросить данные
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const String FFName = 'Zeroes 3';

    List<double> priceList = [];
    // List<List<dynamic>> priceList=[];
    for (var i in cars) {
      priceList.add(i.price);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (networkStatus == NetworkDataStatus.loading)
                const CircularProgressIndicator()
              else
                ElevatedButton(
                    onPressed: networkStatus != NetworkDataStatus.loading
                        ? () => getNetworkData()
                        : null,
                    child: const Text("Обновить данные")),
              Text(
                "STATUS: ${networkStatus.name}",
                style: const TextStyle(
                  fontFamily: FFName,
                  color: Color.fromARGB(255, 56, 56, 56),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Maridian Prise: ${getMedianFromDoubleList(priceList).toString()}",
                    style: const TextStyle(
                      fontFamily: FFName,
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Average Prise: ${getSimpleAverageFromDoubleList(priceList).toString()}",
                    style: const TextStyle(
                      fontFamily: FFName,
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Max Prise: ${getMaxFromDoubleList(priceList).toString()}",
                    style: const TextStyle(
                      fontFamily: FFName,
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Min Prise: ${getMinFromDoubleList(priceList).toString()}",
                    style: const TextStyle(
                      fontFamily: FFName,
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  return ProductWidget(car: cars[index]);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('ЗАКОНЧИЛСЯ НАШ СПИСОК'),
            ],
          ),
        ),
      ),
    );
  }
}
