import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/tags.dart';

class Doc extends StatefulWidget {
  const Doc({Key? key}) : super(key: key);

  @override
  State<Doc> createState() => _DocState();
}

class _DocState extends State<Doc> {
  @override
  Widget build(BuildContext context) {
    return Tag();
  }
}
