import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child:
                Image.asset("assets/images/logo.jpg", width: 250, height: 150),
          ),
          title: Center(
            child: Text(
              'End-Malaria',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          backgroundColor: Color(0xFF005B49),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Our Product',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'About Us',
                        style: TextStyle(color: Colors.white),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Us',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            // Container for the hero section
            Container(
              height: MediaQuery.of(context).size.height *
                  0.9, // Adjust height as needed
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Herobg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Overlay content
            Align(
              alignment: Alignment.centerRight, // Align to the right
              child: Padding(
                padding: const EdgeInsets.all(20.0), // Add padding for spacing
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center vertically
                  crossAxisAlignment:
                      CrossAxisAlignment.end, // Align text to the right
                  children: [
                    Text(
                      'Protect Yourself from Malaria,'
                      'Use our Automated dispenser to put an end '
                      'to Mosquito spread',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white), // Change color for visibility
                      textAlign: TextAlign.right, // Right align text
                    ),
                    SizedBox(height: 20), // Space between text and button
                    ElevatedButton(
                      onPressed: () {
                        // Add your onPressed code here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color(0xFF005B49), // Set the background color
                        foregroundColor: Colors.white, // Text color
                      ),
                      child: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
