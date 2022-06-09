import 'package:flutter/material.dart';

class LessonFourPage extends StatefulWidget {
  const LessonFourPage({Key? key}) : super(key: key);

  @override
  State<LessonFourPage> createState() => _LessonFourPageState();
}

class _LessonFourPageState extends State<LessonFourPage> {
  final String _image = 'https://source.unsplash.com/random';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            const CircleAvatar(
              foregroundColor: Colors.black,
              foregroundImage: AssetImage('assets/images/appstore.png'),
              radius: 32.0,
              child: Text('image'),
            ),
            const Divider(
              color: Colors.red,
              thickness: 1.0,
              height: 14.0,
              indent: 16.0,
              endIndent: 24,
            ),
            Image.asset(
              'assets/images/appstore.png',
              height: 120,
              width: 160,
              fit: BoxFit.cover,
            ),
            Expanded(
              flex: 4,
              child: Image(
                image: NetworkImage('$_image/89'),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 6,
              child: Image(
                image: NetworkImage('$_image/84'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Images'),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            backgroundImage: NetworkImage('$_image/7'),
          ),
        ),
      ],
    );
  }
}
