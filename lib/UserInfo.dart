import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String email;
  final String country;

  UserInfo({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfoItem('Name', name),
            _buildUserInfoItem('Phone Number', phoneNumber),
            _buildUserInfoItem('Email', email),
            _buildUserInfoItem('Country', country),
          ],
        ),
      ),
    );
  }

  Widget _buildUserInfoItem(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          Divider(color: Colors.grey[300]),
        ],
      ),
    );
  }
}
