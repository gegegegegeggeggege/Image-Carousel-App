import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Image Carousel App',
      theme: ThemeData(
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {

  final List imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq0GEayCqHnl9_qC2cVpOAY9K1iHdjmMoPvw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfD83jiUe8Y18pt47_MbDIqKdwvJBQ5eTWIKvYFcP6YzLyCXuXVgCGFWAm7gfQlVEEW94&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd_R4FqbPufQpdk_uNfn7PuE6uQ9lfQ704Pw&s',
    'https://hips.hearstapps.com/hmg-prod/images/dahlia-1508785047.jpg?crop=1.00xw:0.669xh;0,0.0136xh',
    'https://hips.hearstapps.com/hmg-prod/images/spring-flowers-65de4a13478ee.jpg?crop=0.668xw:1.00xh;0.287xw,0&resize=640:*',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY GALLERY'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrls[index],
                        width: 400,
                        height: 400,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('IMAGE GALLERY',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ), ),
                SizedBox(height: 8),
                Text('Swipe left or right o explore there amazing photos.',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600]
                  ),
                  textAlign: TextAlign.center,
                ),

              ],
            ),


          )

        ],
      ),
    );
  }
}


