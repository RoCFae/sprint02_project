import 'package:flutter/material.dart';
import 'package:scania_project/src/app/components/custom_cards.dart';
import 'package:scania_project/src/app/components/custom_pages.dart';
import 'package:scania_project/src/app/modules/create_account/create_account.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/vehicle_information.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/vehicles_register.dart';
import 'package:scania_project/src/utils/export.dart';

class VehiclesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddPages(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => VehiclesForm()),
          ),
        );
      },
      pageTile: vehicles,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => VehicleInformation()),
                  ),
                );
              },
              child: CustomCard(
                title: "Carro 01",
                description: "PIA2A91",
                thirdText: "Accelo 815",
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => VehicleInformation()),
                  ),
                );
              },
              child: CustomCard(
                title: "Carro 02",
                description: "MEU-0312",
                thirdText: "Scania R-500",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
