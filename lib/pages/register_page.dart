import 'package:flutter/material.dart';
import 'package:flutter_bank_app/widgets/app_bar_widget.dart';
import 'package:flutter_bank_app/widgets/textfield_password_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Register'),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'Dados de usuário',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  filled: true,
                  hintText: 'Digite seu e-mail',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue,
                  )),
            ),
            SizedBox(height: 10),
            TextfieldPasswordWidget(),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blue,
                ),
                SizedBox(width: 10),
                Text(
                  'Dados pessoais',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
