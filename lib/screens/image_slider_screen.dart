import 'package:flutter/material.dart';

class ImageSliderScreen extends StatefulWidget {
  @override
  _ImageSliderScreenState createState() => _ImageSliderScreenState();
}

class _ImageSliderScreenState extends State<ImageSliderScreen> {
  int _currentIndex = 0;

  final List<String> _images = [
    'lib/assets/image1.png',
    'lib/assets/image2.png',
    'lib/assets/image3.png',
  ];

  void _slideLeft() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _images.length;
      if (_currentIndex < 0) _currentIndex = _images.length - 1;
    });
  }

  void _slideRight() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: 300, // Adjust the width
                height: 200, // Adjust the height
                child: Image.asset(
                  _images[_currentIndex],
                  fit: BoxFit.contain, // Adjust image scaling behavior
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _slideLeft,
                child: Text('<'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: _slideRight,
                child: Text('>'),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
