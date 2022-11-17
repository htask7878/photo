// import 'package:flutter/material.dart';
//
// import 'model.dart';
// import 'third.dart';
//
// class second extends StatefulWidget {
//   int index;
//
//   second(this.index);
//
//   @override
//   State<second> createState() => _secondState();
// }
//
// class _secondState extends State<second> {
//   List l = [];
//
//   @override
//   void initState() {
//     super.initState();
//     if (widget.index == 0) {
//       l = Model.art;
//     } else if (widget.index == 1) {
//       l = Model.baby;
//     } else if (widget.index == 2) {
//       l = Model.code;
//     } else if (widget.index == 3) {
//       l = Model.tea;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double status = MediaQuery.of(context).padding.top;
//     return Scaffold(
//       appBar: AppBar(title: Text("${Model.c_text[widget.index]}")),
//       body: SafeArea(
//           child: Container(
//         child: GridView.builder(
//           itemCount: l.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(
//                   builder: (context) {
//                     return third(l, index);
//                   },
//                 ));
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage("${l[index]}"), fit: BoxFit.cover)),
//               ),
//             );
//           },
//         ),
//       )),
//     );
//   }
// }
import 'package:flutter/material.dart';

class second extends StatefulWidget {
  String s;
  second(this.s);


  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("${widget.s}"),
        color: Colors.green,
        width: 200,
        height: 200,
      ),
    );
  }
}
