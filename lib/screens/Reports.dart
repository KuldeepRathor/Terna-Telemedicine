// // import 'dart:io';
// //
// // import 'package:flutter/material.dart';
// // import 'package:file_picker/file_picker.dart';
// // class REPORT extends StatefulWidget {
// //   const REPORT({Key? key}) : super(key: key);
// //
// //   @override
// //   State<REPORT> createState() => _REPORTState();
// // }
// //
// // class _REPORTState extends State<REPORT> {
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(child: Scaffold(
// //       body: ListView.builder(itemBuilder:  (context, index) {
// //         return Text(result?.files[index].name ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold));
// //       }),
// //     ))
// //   }
// // }
// import 'package:file_picker/src/platform_file.dart';
// import 'package:flutter/material.dart';
// Widget show({
//   List<PlatformFile>? files,
// }) {
//   return Scaffold(
//     body: ListView.builder(
//         itemCount: files!.length,
//         itemBuilder: (context, index) {
//           final file = files[index];
//           return buildFile(file);
//         }),
//   );}
// Widget buildFile(PlatformFile file) {
//   final kb = file.size / 1024;
//   final mb = kb / 1024;
//   final size =
//   (mb >= 1) ? '${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
//   return Container(
//     width: 100,
//     height: 100,
//     child: InkWell(
//       onTap: () => null,
//       child: Container(
//         width: 200,
//         height: 200,
//         child: ListTile(
//           leading: (file.extension == 'jpg' || file.extension == 'png')
//               ? Image.file(
//             File(file.path.toString()),
//             width: 80,
//             height: 80,
//           )
//               : Container(
//             width: 80,
//             height: 80,
//           ),
//           show(files: files),
//
//           title: Text('${file.name}'),
//           subtitle: Text('${file.extension}'),
//           trailing: Text(
//             '$size',
//             style: TextStyle(fontWeight: FontWeight.w700),
//           ),
//         ),
//       ),
//     ),
//   );
// }