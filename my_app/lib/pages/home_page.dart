import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GLOBAL RECIPROCAL COLLEGES'),
        backgroundColor: Colors.red.shade300,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main welcome icon
              Container(
                width: 700,
                height: 500,
                child: Image.network(
                  'https://grc.edu.ph/wp-content/uploads/2020/08/logomoto-min.png',
                  fit: BoxFit.cover,
                )
              ),
              SizedBox(height: 30),

              // Welcome title
              Text(
                'Welcome to Global Reciprocal Colleges!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Subtitle
              Text(
                'Touching Hearts, Renewing Minds, Transforming Lives',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Quick navigation cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildQuickNavCard(Icons.school, 'College Of Accountancy', Colors.red),
                  _buildQuickNavCard(Icons.school, 'College of Buisiness Administration', Colors.orange),
                  _buildQuickNavCard(Icons.school, 'College of Computer Studies', Colors.grey.shade900),
                  _buildQuickNavCard(Icons.school, 'College of Education', Colors.blueAccent),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickNavCard(IconData icon, String label, Color color) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}