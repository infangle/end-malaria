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
            padding: const EdgeInsets.only(),
            child: Image.asset("assets/images/logo.jpg"),
          ),
          title: Center(
            child: Text(
              'End-Malaria',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
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
                      onPressed: () {
                        // Add your onPressed code here
                      },
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                      padding:
                          const EdgeInsets.all(20.0), // Add padding for spacing
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Center vertically
                        crossAxisAlignment:
                            CrossAxisAlignment.end, // Align text to the right
                        children: [
                          Text(
                            'Protect Yourself from Malaria,\n'
                            'Use our Automated dispenser to put an end \n '
                            'to Mosquito spread',
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors
                                    .white), // Change color for visibility
                            textAlign: TextAlign.right, // Right align text
                          ),
                          SizedBox(height: 20), // Space between text and button
                          ElevatedButton(
                            onPressed: () {
                              // Add your onPressed code here
                            },
                            style: ElevatedButton.styleFrom(
                              // increase button size
                              minimumSize: Size(150, 50),

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
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Our Products',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Image.asset('assets/images/logo.jpg'),
                        Icon(Icons.add),
                        Text("data"),
                        Text("data2")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                            "Instructions\n"
                            "How To use\n"
                            "lorep ipsum\n"
                            "lorep ipsum\n"
                            "lorep ipsum\n",
                            style: TextStyle(
                              fontSize: 24,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              // about us section
              Container(
                padding: EdgeInsets.all(24),
                child: Row(children: [
                  Column(
                    children: [
                      Text(
                        'Who We Are',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text("We are a team based in Addis Ababa, Ethiopia \n"
                          "focusing on manufacturing and distributing \n"
                          "an automated mosquito repellent dispenser \n"
                          "to help prevail the spread of malaria \n"
                          "by combating the spread of Mosquitoes \n"
                          "in an automated and efficient manner."),
                      // add CTA button
                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed code here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF005B49),
                          foregroundColor: Colors.white,
                          // Set the background color
                        ),
                        child: Text('Contact Us'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/images/logo.jpg'),
                    ],
                  ),
                ]),
              ),

              // CTA section
              Container(
                // change container background color
                color: Color(0xFF005B49),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ready to protect yourself from Malaria?',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // Space between text and button
                      ElevatedButton(
                        onPressed: () {
                          // Add your onPressed code here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor:
                              Color(0xFF005B49), // Set the background color
                        ),
                        child: Text('Get Started'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      // Add your onPressed code here
                    },
                  ),
                  IconButton(
                      icon: Icon(Icons.account_circle),
                      onPressed: () {
                        // Add your onPressed code here
                      }),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // Add your onPressed code here
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
