import 'package:flutter/material.dart';
import 'package:sportio/screens2/profile/profileRow.dart';

class ProfilePage2 extends StatelessWidget {
  final String name;
  final String address;
  final String email;
  final String phoneNumber;

  const ProfilePage2({
    Key? key,
    this.name = 'Luffy', // Default name
    this.address = 'East Blue', // Default address
    this.email = 'luffy.king@gmail.com', // Default email
    this.phoneNumber = '+918308402834', // Default phone number
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Fields
            profileRow(label: 'Name', value: name),
            SizedBox(height: 16.0),

            profileRow(label: 'Address', value: address),
            SizedBox(height: 16.0),

            profileRow(label: 'Email', value: email),
            SizedBox(height: 16.0),

            profileRow(label: 'Phone', value: phoneNumber),
            SizedBox(height: 300), // Pushes the Logout button to the bottom

            // Centered Logout Button
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Perform logout action here
                  Navigator.pop(
                      context); // Redirect to previous screen or login page
                },
                child: Text('Logout'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
