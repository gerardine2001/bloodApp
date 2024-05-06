import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Image.asset("images/blood2.jpg"),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "     Blood Link \nLocation Near You",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 150,
              child: const Icon(
                Icons.gps_fixed,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 150,
              child: const Icon(
                Icons.map,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
          height: 100,
          width: 150,
          child: const Icon(
            Icons.phone,
            size: 40,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "Can I give blood?",
          style: TextStyle(color: Colors.redAccent,fontSize: 15),
        ),
        const SizedBox(
          height: 10,
        ),
       GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/share');
          },
          child: const Text(
            "Share on Social media",
            style: TextStyle(color: Colors.redAccent, fontSize: 15),
          ),
        ),

        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the survey screen
          },
          child: const Text('Back to Survey'),
        ),
      ],
    );
  }
}
