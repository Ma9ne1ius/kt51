import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kt51/core/network_data_status.dart';
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
    if (networkStatus == NetworkDataStatus.init) {
      // await Future.delayed(const Duration(seconds: 1));
    }
    networkStatus = NetworkDataStatus.loading;
    setState(() {});
    var response = await client.get(url);

    // if (response.statusCode == 200) {
    //   networkStatus = NetworkDataStatus.error;
    //   cars = [];
    //   setState(() {});
    //   return;
    // }
    cars = CarsData.fromJson(response.data).cars;
    // await Future.delayed(const Duration(seconds: 2));
    networkStatus = NetworkDataStatus.success;
    setState(() {});
    // print(cars.length);
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
    // print('BUILD');
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
              Text("STATUS: $networkStatus"),
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
