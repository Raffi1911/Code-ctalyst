import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffe0eafc),
              Color(0xffcfdef3)
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            _buildFaqItem(
              'What is Code Catalyst?',
              'Code Catalyst is an app designed to handle coding-related questions, providing users with detailed answers and guidance.',
            ),
            _buildFaqItem(
              'How do I search for a question?',
              'Use the search bar at the top of the Questions page to search for specific coding questions.',
            ),
            _buildFaqItem(
              'How do I select a programming language?',
              'Use the dropdown menu on the Questions page to select the programming language relevant to your question.',
            ),
            _buildFaqItem(
              'What do the numbers below each question represent?',
              'The numbers below each question represent the number of answers, votes, and views the question has received.',
            ),
            _buildFaqItem(
              'How do I submit a new question?',
              'To submit a new question, use the "Submit Question" button available on the Questions page.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqItem(String question, String answer) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              answer,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}