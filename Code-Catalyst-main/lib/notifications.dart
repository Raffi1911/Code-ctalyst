import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  Notifications({super.key});
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Answer',
      description: 'Someone answered your question.',
      dateTime: DateTime.now(),
    ),
    NotificationItem(
      title: 'Upvote Received',
      description: 'Your answer received an upvote.',
      dateTime: DateTime.now(),
    ),
    NotificationItem(
      title: 'Down vote Received',
      description: 'Your answer received an upvote.',
      dateTime: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: 34,
            ),
            Image.asset(
              'assets/images/CatalystL.png',
              height: 25,
            ),
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
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return NotificationCard(notification: notifications[index]);
          },
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Color(0xff66a6ff),
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          child: ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text(notification.title,style: TextStyle(color: Colors.white),),
            subtitle: Text(notification.description,style: TextStyle(color: Colors.white)),
            trailing: Text(
              _formatDateTime(notification.dateTime),
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  String _formatDateTime(DateTime dateTime) {
    Duration difference = DateTime.now().difference(dateTime);
    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else {
      return '${difference.inDays} days ago';
    }
  }
}

class NotificationItem {
  final String title;
  final String description;
  final DateTime dateTime;

  NotificationItem({
    required this.title,
    required this.description,
    required this.dateTime,
  });
}