import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OpenCamera extends StatefulWidget {
  OpenCamera({Key? key}) : super(key: key);

  @override
  _OpenCameraState createState() => _OpenCameraState();
}

class _OpenCameraState extends State<OpenCamera> {
  final ImagePicker _picker = ImagePicker();

  Future getImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    // DefaultTabController.of(context).animateTo(2);
    // if (_picker == null) {
    //   Navigator.pop(context);
    // } else {
    //   Navigator.pop(context);
    // }
  }

  @override
  void initState() {
    getImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
