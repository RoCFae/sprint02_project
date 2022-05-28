import 'package:flutter/material.dart';
import 'package:scania_project/src/app/components/custom_textforms.dart';
import 'package:scania_project/src/app/components/red_button.dart';
import 'package:scania_project/src/app/components/custom_pages.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/vehicles_page.dart';

import '../../../utils/ui_text.dart';

class VehiclesForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: vehiclesCaps,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
                addNewVehicle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35, color: Color.fromARGB(255, 180, 70, 82)),
              ),
              const SizedBox(
                height: 25.0,
              ),
              AddTextForm(label: name),
              const SizedBox(
                height: 25.0,
              ),
              AddTextForm(label: carModel),
              const SizedBox(
                height: 25.0,
              ),
              AddTextForm(label: licensePlate),
              const SizedBox(
                height: 25.0,
              ),
              AddTextForm(label: year),
              const SizedBox(
                height: 25.0,
              ),
              AddTextForm(label: oil),
              const SizedBox(
                height: 25.0,
              ),
              StandardButton(
                buttonText: add,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => VehiclesPage()),
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
