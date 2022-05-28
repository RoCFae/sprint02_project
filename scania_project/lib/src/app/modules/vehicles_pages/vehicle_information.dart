import 'package:flutter/material.dart';
import 'package:scania_project/src/app/components/red_button.dart';
import 'package:scania_project/src/app/components/custom_pages.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/graphics_page.dart';

import '../../../utils/export.dart';

class VehicleInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: vehicles,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              '$name: Carro 01',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$licensePlate: MEU-0312',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$carModel: Accelo 815',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$averageConsumption: 4,2km/L',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$oil: Diesel',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$emissionCO2: 226,03 Kg CO2-eq/km',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 17.0,
            ),
            const Text(
              '$emission: Dentro do Esperado',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 19, color: Color.fromARGB(255, 63, 59, 60)),
            ),
            const SizedBox(
              height: 30.0,
            ),
            StandardButton(
                buttonText: seeCharts,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => VehicleCharts()),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
