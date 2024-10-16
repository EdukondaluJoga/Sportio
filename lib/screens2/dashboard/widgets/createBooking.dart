import 'package:flutter/material.dart';

// The CreateBooking button widget
class CreateBooking2 extends StatelessWidget {
  final String title;

  const CreateBooking2({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to BookingFormPage when tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookingFormPage2()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.blue, // Button background color
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// The BookingFormPage definition (same as before)
class BookingFormPage2 extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();
  final TextEditingController courtController = TextEditingController();
  final TextEditingController sportController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Booking"),
      ),
      body: Padding(
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
