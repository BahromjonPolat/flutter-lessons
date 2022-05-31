import 'package:flutter/material.dart';

class LessonThreePage extends StatefulWidget {
  const LessonThreePage({Key? key}) : super(key: key);

  @override
  State<LessonThreePage> createState() => _LessonThreePageState();
}

class _LessonThreePageState extends State<LessonThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://source.unsplash.com/random/4',
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12.0),
          SizedBox(
              height: 160.0,
              width: 160.0,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(15),

                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  topRight: Radius.elliptical(1.0, 0.5),
                ),
                child: Image.network(
                  'https://source.unsplash.com/random/8',
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(height: 12.0),
          Expanded(
            child: Container(
                width: 320,
                decoration:const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://source.unsplash.com/random/32'),
                )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Image with  text'),
                    Container(
                      height: 45.0,
                      width: 120.0,
                      color: Colors.amber,
                    ),
                    Text('footer'),
                  ],
                )),
          ),
          Expanded(
            child: Image.network(
              'https://source.unsplash.com/random/5',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
