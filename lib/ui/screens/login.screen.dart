import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Usuario'),
              ),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: 'Usuario'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //Agregar validación de campos no vacio
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
