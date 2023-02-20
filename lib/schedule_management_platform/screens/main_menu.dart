import 'package:flutter/material.dart';


class MainMenuView extends StatelessWidget {
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 92, 60),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 100,
        leading: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          child: TextButton(
            onPressed: () {}, 
            child: Icon(Icons.search_outlined, color: Colors.white,)
            ),
        ),        
      ),
      body: Stack(
        children: [
          PngImage(name: ImageItems().splash)
        ],
      ),
    );
  }
}

class ImageItems {
  final String splash = "splash-clipart-transparent";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}