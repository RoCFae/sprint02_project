import 'package:flutter/material.dart';
import 'package:scania_project/src/app/components/custom_cards.dart';
import 'package:scania_project/src/app/components/custom_pages.dart';
import 'package:scania_project/src/app/modules/users_pages/form_users_page.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/vehicle_information.dart';
import 'package:scania_project/src/app/modules/vehicles_pages/vehicles_register.dart';
import 'package:scania_project/src/utils/export.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AddPages(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => EditUser()),
          ),
        );
      },
      pageTile: usersCaps,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => EditUser()),
                  ),
                );
              },
              child: UserCard(
                name: "Leonardo",
                email: "leo.flutter@hotmail.com",
                cpf: "512.175.663-96",
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
                    builder: ((context) => EditUser()),
                  ),
                );
              },
              child: UserCard(
                name: "Arnold",
                email: "arnold.schwarzenegger@gmail.com",
                cpf: "999.666.777-65",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
