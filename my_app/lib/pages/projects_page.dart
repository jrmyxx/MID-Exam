import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  final List projects = [
    Project(title: 'COLLEGE OF ACCOUNTANCY', description: 'The Bachelor of Science in Accountancy (BSA) is a four-year program which provides general accounting education to learners who wish to pursue a professional career as accountants, particularly as public accountants for the civil service. The program develops accounting professionals who are steeped in the core values, namely: Fortitude, Excellence, and Uprightness. The program of study is a balanced mix of general education, business and professional courses aimed at developing not only a competent professional but a morally upright citizen of the Philippines and of the world.', icon: Icons.school, color: Colors.red),
    Project(title: 'COLLEGE OF BUSINESS ADMINISTRATION', description: 'The Bachelor of Science in Business Administration Major in Marketing Management is a four-year program designed to produce graduates with values.  The program will equip its graduates with both technical skills and competencies of performing careers in marketing, market research, advertising and public relations that meet the needs of the fast-changing business environment.', icon: Icons.school, color: Colors.orange),
    Project(title: 'COLLEGE OF COMPUTER STUDIES', description: 'The BS Information Technology program includes the study of the utilization of both hardware and software technologies involving planning, installing, customizing, operating, managing and administering; and maintaining information technology infrastructure that provides computing solutions to address the needs of an organization.', icon: Icons.school, color: Colors.grey.shade900),
    Project(title: 'COLLEGE OF EDUCATION', description: 'GRC- College of Education offers Bachelor of Secondary Education (BSEd) and Bachelor of Elementary Education (BEEd). Each is a four-year program that prepares future educators in the pedagogical field. It is based on the essential components of the teaching profession as reflected in the Professional Education courses required by the Commission on Higher Education, including but not limited to the following: philosophical foundations of education, principles of teaching, curriculum development, child and adolescent psychology, facilitating learner-centered teaching, assessment of learning, educational technology, preparation of instructional materials, and classroom management, as well as expertise in the respective fields of specialization. ', icon: Icons.school, color: Colors.blueAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academics'),
        backgroundColor: Colors.red.shade300,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return _buildProjectCard(projects[index]);
        },
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Project icon
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: project.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(project.icon, size: 30, color: project.color),
              ),
              SizedBox(width: 16),

              // Project details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                    SizedBox(height: 4),
                    Text(project.description, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),

              // Arrow icon
              Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// Project data model
class Project {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}