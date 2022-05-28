import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Color _black = Colors.black26;
  final Color _white = Colors.white;
  final Color _white12 = Colors.white12;
  final Color _orange = Colors.orange;
  final Color _green = Colors.green;
  final Color _red = Colors.red;

  String _char = '';
  String _num1 = '';
  String _num2 = '';
  String _result = '';
  String _opr = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _black,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _char,
                    style: TextStyle(color: _white, fontSize: 18.0),
                  ),
                  Text(
                    _result,
                    style: TextStyle(color: _white, fontSize: 22.0),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              // color: _orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _setRow('C()/'),
                  _setRow('789X'),
                  _setRow('456-'),
                  _setRow('123+'),
                  _setRow('0%.=')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _setRow(String symbols) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _button(symbols[0]),
          _button(symbols[1]),
          _button(symbols[2]),
          _button(symbols[3], color: symbols[3] == '=' ? _green : _orange),
        ],
      );

  _button(
    String sym, {
    Color color = Colors.white12,
  }) =>
      SizedBox(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
          backgroundColor: color,
          onPressed: () {
            print(_num1);
            print(_num2);
            setState(() {
              if (sym == 'C') {
                if (_char.isEmpty) return;
                _char = _char.substring(0, _char.length - 1);
                return;
              }

              if (sym == '=' && _num1.isNotEmpty && _num2.isNotEmpty) {
                
                int num1 = int.parse(_num1);
                int num2 = int.parse(_num2);
                String res = '${num1 + num2}';
                _result = res;
                return;
              }

              if ('/X-+'.contains(sym)) {
                _opr = sym;
                _char = '$_char$sym';
                return;
              }

              if('1234567890'.contains(sym)) {
                if (_opr.isEmpty) {
                  _num1 = '$_num1$sym';

                }
                else {
                  _num2 = '$_num2$sym';
                }
                _char = '$_char$sym';
                return;
              }

              _char = '$_char$sym';
            });
          },
          child: Text(sym, style: const TextStyle(fontSize: 24.0)),
        ),
      );
}
