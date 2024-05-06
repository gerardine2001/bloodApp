import 'package:flutter/material.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back to the previous screen
          },
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 110.0),
          child: Center(
            child: Icon(
              Icons.bloodtype,
              size: 170,
              color: Colors.redAccent,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Please pick your \n    blood type",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        bloodTypeRow("A", "B"),
        const SizedBox(
          height: 25,
        ),
        bloodTypeRow("0", "AB"),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Text(
                "+",
                style: TextStyle(fontSize: 25),
              )),
            ),
            const SizedBox(
              width: 50,
            ),
            Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Text(
                "-",
                style: TextStyle(fontSize: 25),
              )),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        surveyButton("Finish", () {
          // Add functionality for Finish button here
        }),
        const SizedBox(height: 20,),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/booking');
          },
          child: const Text(
            "Book now!",
            style: TextStyle(color: Colors.redAccent, fontSize: 15),
          ),
        )
      ],
    );
  }
}

Widget bloodTypeRow(String type1, String type2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        width: 180,
        height: 90,
        child: Center(
          child: Text(
            type1,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(20),
        ),
        width: 180,
        height: 90,
        child: Center(
          child: Text(
            type2,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      )
    ],
  );
}

Widget surveyButton(String title, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}
