import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String imageUrl =
      'https://cdns.klimg.com/bola.net/library/upload/21/2017/06/1_fd1232a.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This Is App Bar'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Left Section
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(
              width: 20,
            ),

            // Middle Section
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ronaldo',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 16,
                    // ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Halo!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 10,
            ),

            // Rigth Section
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '20:00',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100)),
                  padding: const EdgeInsets.all(4),
                  child: const SizedBox(
                    height: 35,
                    width: 35,
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
