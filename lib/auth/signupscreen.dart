import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String selectedRole = 'User'; // Default role
  final List<String> roles = ['Admin', 'User', 'Guest'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Email TextField
              _buildInputBox(
                label: 'Email',
                controller: emailController,
                obscureText: false,
              ),
              SizedBox(height: 16.0),

              // Username TextField
              _buildInputBox(
                label: 'Username',
                controller: usernameController,
                obscureText: false,
              ),
              SizedBox(height: 16.0),

              // Password TextField
              _buildInputBox(
                label: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 16.0),

              // Phone Number TextField
              _buildInputBox(
                label: 'Phone Number',
                controller: phoneController,
                obscureText: false,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),

              // Role Dropdown
              _buildDropdown(),
              SizedBox(height: 24.0),

              // Signup Button
              ElevatedButton(
                onPressed: () {
                  // Handle signup logic
                  String email = emailController.text;
                  String username = usernameController.text;
                  String password = passwordController.text;
                  String phone = phoneController.text;
                  String role = selectedRole;

                  // Implement signup logic here, such as API calls or local validation
                  print('Email: $email');
                  print('Username: $username');
                  print('Password: $password');
                  print('Phone: $phone');
                  print('Role: $role');

                  // Navigate to the desired screen after signup
                  Navigator.pop(context);
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to build the text input box for various fields
  Widget _buildInputBox({
    required String label,
    required TextEditingController controller,
    required bool obscureText,
    TextInputType keyboardType = TextInputType.text, // Default to normal text
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  // Method to build the dropdown for selecting Role
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
