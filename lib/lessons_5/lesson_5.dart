import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LessonFivePage extends StatefulWidget {
  const LessonFivePage({Key? key}) : super(key: key);

  @override
  State<LessonFivePage> createState() => _LessonFivePageState();
}

class _LessonFivePageState extends State<LessonFivePage> {
  late double _h;
  late double _w;
  @override
  Widget build(BuildContext context) {
    _h = MediaQuery.of(context).size.height;
    _w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _appBar(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // mini: true,
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add),
        heroTag: '1',
        tooltip: 'Floating Action Button',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            _elvatedButton(),
            _elevatedButtonIcon(),
            _outlinedButton(),
            FloatingActionButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
        iconTheme: const IconThemeData(color: Colors.amber),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Icon Button clicked');
              }
            },
          ),
          PopupMenuButton(
            // icon: const Icon(Icons.menu_book),
            offset: const Offset(-25, 25),
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: const Text('Settings'),
                  onTap: () {
                    // print('Settings bosildi');
                    debugPrint('Clicked');
                  }),
              PopupMenuItem(
                child: const ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.person),
                  title: Text('Prolile'),
                ),
                onTap: () {
                  print('Profile bosildi');
                },
              ),
            ],
          )
        ]);
  }

  OutlinedButton _outlinedButton() {
    return OutlinedButton(
        onPressed: () {},
        child: Text('Outlined Button'),
        style: OutlinedButton.styleFrom(
            primary: Colors.amber, padding: EdgeInsets.zero
            // backgroundColor: Colors.black26,

            ));
  }

  ElevatedButton _elevatedButtonIcon() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.send),
      label: const Text('Send'),
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        elevation: 5.0,
        fixedSize: Size(_w * .8, 56),
        // padding: EdgeInsets.all(32),
        // onPrimary: Colors.blue,
        onSurface: Colors.red,
        shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.grey, width: 3),
        ),
      ),
    );
  }

  ElevatedButton _elvatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.amber,
        elevation: 5.0,
        fixedSize: Size(_w * .8, 56),
        // padding: EdgeInsets.all(32),
        // onPrimary: Colors.blue,
        onSurface: Colors.red,
        shadowColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.grey, width: 3)),
      ),
      onLongPress: () {
        print('Long Pressed');
      },
      onPressed: () {
        if (kDebugMode) {
          print('Elevated Button clicked');
        }
      },
      child: const Text('Elevated Button'),
    );
  }
}
