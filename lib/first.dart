// import 'package:flutter/material.dart';
// import 'package:photo/model.dart';
// import 'package:photo/second.dart';
//
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Catagories")),
//       body: SafeArea(
//         child: GridView.builder(
//           itemCount: Model.c_text.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
//           itemBuilder: (context, index) {
//             return GridTile(
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) {
//                       return second(index);
//                     },
//                   ));
//                 },
//                 child: Container(
//                     child: Center(
//                         child: Container(
//                             alignment: Alignment.center,
//                             color: Colors.black45,
//                             width: double.infinity,
//                             height: 40,
//                             child: Text("${Model.c_text[index]}"))),
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage("${Model.photo[index]}"),
//                             fit: BoxFit.fill))),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
