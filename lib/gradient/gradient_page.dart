import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4 , 0.7],
          colors: [Colors.green , Colors.greenAccent]
        )
      ),
    );
  }
}


class AppBarGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient AppBar' , style: TextStyle(fontSize: 16),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.purple , Colors.amber]
            )
          ),
        ),
      ),
    );
  }
}


class TextGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
            shaderCallback: (rect) => LinearGradient(
              colors: [Colors.red , Colors.orangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ).createShader(rect),
            child: Text('Gradient Text', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),))
      ),
    );
  }
}



