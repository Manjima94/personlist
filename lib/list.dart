import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  List persons = [
    {'name': 'Manjima', 'mobile': 1234567890, 'service': 'Electrical'},
    {'name': 'Meenu', 'mobile': 76346739780, 'service': 'Mechanical'},
    {'name': 'Aarya', 'mobile': 9134567890, 'service': 'Electrical'},
    {'name': 'Sreya', 'mobile': 8564567890, 'service': 'Mechanical'},
    {'name': 'Theertha', 'mobile': 897667890, 'service': 'Electrical'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('images/man.png'),
        ),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: const Color.fromARGB(255, 129, 210, 220),
                height: 130,
                width: 10,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 25),
                        child: Image.asset(
                          'images/man.png',
                          width: 80,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 20),
                        child: Column(
                          children: [
                            Text(
                              persons[index]['name'],
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(persons[index]['mobile'].toString(),
                                style: const TextStyle(fontSize: 20)),
                            Text(
                              persons[index]['service'],
                              style: const TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ])),
          );
        },
      ),
    );
  }
}
