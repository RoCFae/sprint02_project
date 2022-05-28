import 'package:flutter/material.dart';
import 'package:scania_project/src/app/components/red_button.dart';
import 'package:scania_project/src/app/components/custom_textforms.dart';
import 'package:scania_project/src/app/components/custom_pages.dart';
import 'package:scania_project/src/app/modules/users_pages/users_page.dart';
import 'package:scania_project/src/utils/export.dart';

// ignore: use_key_in_widget_constructors
class EditUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      pageTile: usersCaps,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              editUser,
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
            AddTextForm(label: eMail),
            const SizedBox(
              height: 25.0,
            ),
            AddTextForm(label: cpf),
            const SizedBox(
              height: 25.0,
            ),
            AddTextForm(label: password),
            const SizedBox(
              height: 25.0,
            ),
            AddTextForm(label: confirmPassword),
            const SizedBox(
              height: 25.0,
            ),
            StandardButton(
              buttonText: add,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => UsersPage()),
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
