// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyCVApp());
}

class MyCVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lê Tài Hưng Thịnh - CV'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.png'), // Replace with your image
                ),
              ),
              SizedBox(height: 16),
              // Name and Title
              Center(
                child: Column(
                  children: [
                    Text(
                      'Lê Tài Hưng Thịnh',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mobile Developer Intern',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              Divider(height: 32, thickness: 1),
              // Contact Info
              buildSectionTitle('Contact Information'),
              buildListTile(Icons.phone, 'Phone', '0349332023'),
              buildListTile(Icons.email, 'Email', 'hungthinh2004pt@gmail.com'),
              buildListTile(Icons.location_on, 'Location', 'District 5, Ho Chi Minh City, Vietnam'),
              Divider(height: 32, thickness: 1),
              // Education
              buildSectionTitle('Education'),
              buildListTile(Icons.school, 'Cao Thang College',
                  'Information Technology, 2022 - now'),
              Divider(height: 32, thickness: 1),
              // Skills
              buildSectionTitle('Skills'),
              Text(
                '• Flutter & Dart\n'
                '• UI/UX Design\n'
                '• API Integration\n'
                '• Firebase & Cloud Services\n'
                '• Team Collaboration',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              Divider(height: 32, thickness: 1),
              // Projects
              buildSectionTitle('Projects'),
              buildProjectTile('Mobile E-commerce App', 'Developed a user-friendly e-commerce app using Flutter for seamless shopping.'),
              buildProjectTile('Task Management App', 'Created a task management app with Firebase backend and real-time updates.'),
              Divider(height: 32, thickness: 1),
              // Hobbies
              buildSectionTitle('Hobbies'),
              Text(
                '• Coding\n'
                '• Learning new technologies',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  Widget buildProjectTile(String projectName, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
