import 'package:flutter/material.dart';

class BookingFormPage2 extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();
  final TextEditingController courtController = TextEditingController();
  final TextEditingController sportController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Court"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildInputBox('City', cityController),
              SizedBox(height: 12),
              _buildInputBox('Court', courtController),
              SizedBox(height: 12),
              _buildInputBox('Sport', sportController),
              SizedBox(height: 12),
              _buildInputBox('Time', timeController),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Handle booking creation logic
                  print('City: ${cityController.text}');
                  print('Court: ${courtController.text}');
                  print('Sport: ${sportController.text}');
                  print('Time: ${timeController.text}');
                  // Perform any other actions or navigate away
                },
                child: Text("Create"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputBox(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
