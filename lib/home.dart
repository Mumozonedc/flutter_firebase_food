import 'package:flutter/material.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            border: OutlineInputBorder(),
          ),
        ),
      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(0),
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(8),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text('   data'),
                    SizedBox(height: 8),
                    Text('   data'),
                    SizedBox(height: 8),
                    Text('   data'),
                  ],
                ),
                Container(
                  height: double.infinity,
                  width: 150,
                  child: Expanded(
                    child: Image.network(
                      'https://img.lovepik.com/background/20211030/medium/lovepik-cartoon-cute-mobile-phone-wallpaper-background-image_400427828.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
