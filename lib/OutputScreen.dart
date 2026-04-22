import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String? username;
  final String? password;
  final String? email;
  final bool? rememberMe;
  final String? gender;
  final String? country;
  final double? age;
  final DateTime? selectedDate;
  final String? phoneNumber;
  final String? address;
  final String? city;
  final String? bio;
  final String? favoriteColor;
  final String? educationLevel;

  const OutputScreen({
    super.key,
    this.username,
    this.password,
    this.email,
    this.rememberMe,
    this.gender,
    this.country,
    this.age,
    this.selectedDate,
    this.phoneNumber,
    this.address,
    this.city,
    this.bio,
    this.favoriteColor,
    this.educationLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Output'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Username: ${username ?? 'Not provided'}'),
            Text('Password: ${password ?? 'Not provided'}'),
            Text('Email: ${email ?? 'Not provided'}'),
            Text('Phone Number: ${phoneNumber ?? 'Not provided'}'),
            Text('Address: ${address ?? 'Not provided'}'),
            Text('City: ${city ?? 'Not provided'}'),
            Text('Bio: ${bio ?? 'Not provided'}'),
            Text('Favorite Color: ${favoriteColor ?? 'Not provided'}'),
            Text('Education Level: ${educationLevel ?? 'Not provided'}'),
            Text('Remember Me: ${rememberMe == true ? 'Yes' : 'No'}'),
            Text('Gender: ${gender ?? 'Not provided'}'),
            Text('Country: ${country ?? 'Not provided'}'),
            Text('Age: ${age?.round() ?? 'Not provided'}'),
            Text('Selected Date: ${selectedDate != null ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}' : 'Not selected'}'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}