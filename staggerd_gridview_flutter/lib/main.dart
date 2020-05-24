import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageList = [
    'https://i.pinimg.com/564x/a6/bd/c7/a6bdc76bb98884e930bfc284f9964927.jpg',
    'https://i.pinimg.com/564x/13/de/13/13de1340535d86fc1934c71d22e028de.jpg',
    'https://i.pinimg.com/564x/3e/81/e5/3e81e5098ed329251a0eff1c0b86a71e.jpg',
    'https://i.pinimg.com/564x/51/4a/2e/514a2ea45a80dcd716f3a9db3cf6ff41.jpg',
    'https://i.pinimg.com/564x/51/f2/31/51f2311878099acf65e9f44f8c19ed56.jpg',
    'https://i.pinimg.com/564x/a6/bd/c7/a6bdc76bb98884e930bfc284f9964927.jpg',
    'https://i.pinimg.com/564x/13/de/13/13de1340535d86fc1934c71d22e028de.jpg',
    'https://i.pinimg.com/564x/3e/81/e5/3e81e5098ed329251a0eff1c0b86a71e.jpg',
    'https://i.pinimg.com/564x/51/4a/2e/514a2ea45a80dcd716f3a9db3cf6ff41.jpg',
    'https://i.pinimg.com/564x/51/f2/31/51f2311878099acf65e9f44f8c19ed56.jpg',
    'https://i.pinimg.com/564x/a6/bd/c7/a6bdc76bb98884e930bfc284f9964927.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imageList[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          staggeredTileBuilder: (index) {
            return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
          },
        ),
      ),
    );
  }
}



