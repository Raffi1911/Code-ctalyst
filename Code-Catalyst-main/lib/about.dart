import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 70,),
            Text('About'),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe0eafc),Color(0xffcfdef3)
                ])
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // App Logo
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/app_logo.png'),
                ),
                SizedBox(height: 16),

                // App Name
                Text(
                  'Code Catalyst',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),

                // Introduction
                Text(
                  'Welcome to CodeCatalyst, the ultimate platform designed to revolutionize the way you engage with coding challenges and solutions. At CodeCatalyst, we aim to foster a dynamic and collaborative community where developers, from novices to experts, can share knowledge, seek guidance, and enhance their coding skills.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),

                // Features
                Text(
                  'Features:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                _buildFeatureItem('Comprehensive Coding Questions'),
                _buildFeatureItem('Expert Solutions'),
                _buildFeatureItem('Profile Customization'),
                _buildFeatureItem('Real-Time Notifications'),
                _buildFeatureItem('Secure and User-Friendly'),

                SizedBox(height: 16),

                // Team
                Text(
                  'Credits',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                _buildTeamMember('Zaid Rizwan', 'Developer'),
                SizedBox(height: 16),
                _buildTeamMember('Azan Ahmad', 'Developer'),
                SizedBox(height: 16),
                _buildTeamMember('Raffi Ullah Tahir', 'Developer'),
                SizedBox(height: 16),
                _buildTeamMember('Rehan Durrani', 'Designer'),
                SizedBox(height: 16),
                _buildTeamMember('Shahzad Hassan', 'Designer'),

                SizedBox(height: 16),

                // Contact Information
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: contact@example.com',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),

                // Version Information
                Text(
                  'App Version: 1.0.0',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),

                // Terms and Privacy Policy
                TextButton(
                  onPressed: () {
                    // Handle navigation to terms and privacy policy
                  },
                  child: Text(
                    'Terms of Service and Privacy Policy',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),

                // Acknowledgements

                // Social Media Links
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      onPressed: () {
                        // Handle Facebook link
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter),
                      onPressed: () {
                        // Handle Twitter link
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {
                        // Handle LinkedIn link
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {
                        // Handle Instagram link
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return ListTile(
      leading: Icon(Icons.check_circle, color: Colors.blue),
      title: Text(feature),
    );
  }

  Widget _buildTeamMember(String name, String role) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/team_member.png'), // Replace with actual image
      ),
      title: Text(name),
      subtitle: Text(role),
    );
  }

  Widget _buildAcknowledgementItem(String item) {
    return ListTile(
      leading: Icon(Icons.star, color: Colors.yellow),
      title: Text(item),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutPage(),
  ));
}