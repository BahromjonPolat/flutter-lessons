import 'package:flutter/material.dart';

class LessonOneMainPage extends StatefulWidget {
  const LessonOneMainPage({Key? key}) : super(key: key);

  @override
  State<LessonOneMainPage> createState() => _LessonOneMainPageState();
}

class _LessonOneMainPageState extends State<LessonOneMainPage> {
  @override
  void initState() {
    super.initState();
    print('Init State');
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _setColor(h: 200, w: 400),
          SizedBox(
            height: 220.0,
            child: Row(
              children: [
                _setColor(h: 200, w: 200),
                Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _setColor(h: 50, w: 150.0, color: Colors.indigo),
                    _setColor(h: 120, w: 150, color: Colors.blue),
                  ],
                )
              ],
            ),
          ),
          _setColor(h: 180, w: 400, color: Colors.orange),
        ],
      ),
    );
  }

  Widget _setColor({Color color = Colors.green, double? h, double? w}) =>
      Container(
        height: h,
        width: w,
        color: color,
        margin: const EdgeInsets.all(10.0),
      );

  Center _columnRow() {
    return Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Colum \\/'),
          const FlutterLogo(size: 32),
          const FlutterLogo(size: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Row => '),
              FlutterLogo(size: 32),
              FlutterLogo(size: 32),
              FlutterLogo(size: 32),
            ],
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: const Text('App Bar'),
      centerTitle: true,
      backgroundColor: Colors.amber,
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 12.0),
        Icon(Icons.coronavirus_outlined),
        SizedBox(width: 12.0),
      ],
    );
  }
}
