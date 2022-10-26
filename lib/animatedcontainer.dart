import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: 400,
        width: 400,
        child: 
    Center(
      child: ModelViewer(
            src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
            alt: "A 3D model of an astronaut",
            ar: true,
            autoRotate: true,
            cameraControls: true,
          ),
    ),
              
      ),
    );
  }
}