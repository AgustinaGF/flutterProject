import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    child: const SafeArea(
                      //el widget SafeArea siempre tiene como default button true
                      child: Column(
                        children: [Text('test@test.com')],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
