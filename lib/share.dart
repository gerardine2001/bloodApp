import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart'; // Import share_plus package

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share on Social Media'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your message',
                labelText: 'Message',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _shareOnSocialMedia(context);
              },
              child: const Text('Share', style: TextStyle(fontSize: 20 , color: Colors.redAccent),),
            ),
          ],
        ),
      ),
    );
  }

  void _shareOnSocialMedia(BuildContext context) {
    const String message = 'Your message here'; // Get the message from TextField

    Share.share(message); // Share the message
  }
}
