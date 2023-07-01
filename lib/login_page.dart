import 'package:flutter/material.dart';
import 'game_page.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your credentials to login:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true, // Mask the password
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Perform login logic
                    Navigator.pushNamed(context, '/game');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}