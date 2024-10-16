import 'package:flutter/material.dart';
import 'package:sportio/auth/inputBox.dart';
import 'package:sportio/auth/signupscreen.dart';
import 'package:sportio/screens/entry.dart';
import 'package:sportio/screens2/entry.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = 'User'; // Default role
  final List<String> roles = ['Admin', 'User', 'Guest'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      resizeToAvoidBottomInset:
          true, // Ensures layout is adjusted when keyboard appears
      body: SingleChildScrollView(
        // Allows content to scroll when the keyboard is open
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Username TextField
            inputBox(
                label: 'Username',
                controller: usernameController,
                obscureText: false),
            SizedBox(height: 16.0),

            // Password TextField
            inputBox(
                label: 'Password',
                controller: passwordController,
                obscureText: true),
            SizedBox(height: 16.0),

            // Role Dropdown
            _buildDropdown(),
            SizedBox(height: 24.0),

            // Login Button
            ElevatedButton(
              onPressed: () {
                // Check the role and navigate to the appropriate screen
                if (selectedRole.toLowerCase() == 'admin') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen2()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                }
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Signup Button
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text('Sign Up'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown() {
    return DropdownButtonFormField<String>(
      value: selectedRole,
      decoration: InputDecoration(
        labelText: 'Role',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: roles.map((role) {
        return DropdownMenuItem(
          value: role,
          child: Text(role),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          selectedRole = newValue!;
        });
      },
    );
  }
}
