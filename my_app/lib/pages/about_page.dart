import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final List contactItems = [
    ContactInfo(Icons.person, 'ABOUT GRC', 'With a dream of having a free education through reciprocation, where everyone can have the opportunity to change their lives through a very affordable tuition fee and even scholarship grants, available not just for the youth but also for adults. Chairman Vicente Ongtenco established the Global Reciprocal Colleges aiming to develop the youth to become responsible, competent, and dedicated professionals. In its pursuit of social and economic amelioration, on December 10, 2007, the Global Reciprocal Colleges was registered in the Security Exchange Commission (SEC), and in partnership with the Motortrade Life And Livelihood Assistance Foundation, Inc. (MLALAF), Global Reciprocal Colleges started a Technical Education and Skills Development Authority (TESDA) courses but in due course of time, GRC finally pursued courses that will help it to be established as a College institution.', Colors.red),
    ContactInfo(Icons.work, 'MISSION','GRC is creating a culture for successful, socially responsible, morally upright skilled workers and highly competent professionals through values-based quality education.', Colors.red),
    ContactInfo(Icons.remove_red_eye, 'VISION', 'A global community of excellent individuals with values.', Colors.red),
    ContactInfo(Icons.handshake, 'CORE VALUES', 'God-Fearing, Reciprocating, Committing to Excellence.', Colors.red),
    ContactInfo(Icons.newspaper, 'PHILOSOPHY', 'Touching Hearts, Renewing Minds, Transforming Lives.', Colors.red),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College of Accountancy'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: 600,
                  height: 400,
                  child: Image.network(
                    'https://grc.edu.ph/wp-content/uploads/2023/02/accountancy-1.5.-final-na-to-1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 20),

              ...contactItems.map((item) => _buildContactItem(item)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactItem(ContactInfo info) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2))],
      ),
      child: Row(
        children: [
          // Icon container
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: info.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(info.icon, color: info.color, size: 24),
          ),
          SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87)),
                SizedBox(height: 4),
                Text(info.value, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo {
  final IconData icon;
  final String title;
  final String value;
  final Color color;

  ContactInfo(this.icon, this.title, this.value, this.color);
}