// // import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:photo/first.dart';
// import 'package:photo/model.dart';
//
// class home extends StatefulWidget {
//   const home({Key? key}) : super(key: key);
//
//   @override
//   State<home> createState() => _homeState();
// }
//
// class _homeState extends State<home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             leading: IconButton(
//                 onPressed: () {}, icon: Icon(Icons.horizontal_split)),
//             title: Text("Categories"),
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.search,
//                     size: 25,
//                   ))
//             ]),
//         body: SafeArea(
//             child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
//           itemCount: 4,
//           itemBuilder: (context, index) {
//             return GridTile(
//                 child: Container(
//               child: Center(
//                 child: InkWell(
//                     onTap: () {
//                       Navigator.push(context, MaterialPageRoute(
//                         builder: (context) {
//                           return first(index);
//                         },
//                       ));
//                     },
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 25,
//                       width: double.infinity,
//                       color: Colors.black45,
//                       child: Text("${model.c_text[index]}",
//                           style: TextStyle(color: Colors.white, fontSize: 20)),
//                     )),
//               ),
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(model.photo[index]), fit: BoxFit.fill)),
//             ));
//           },
//         )));
//   }
// }
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:photo/second.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return OpenContainer(
            transitionDuration: Duration(microseconds: 200),
            openBuilder: (context, action) => second("Title ${index + 1}"),
            closedBuilder: (context, action) => ListTile(
              title: Text("Title ${index + 1}"),
            ),
          );
        },
      ),
      floatingActionButton: OpenContainer(
          transitionDuration: Duration(seconds: 2),
          middleColor: Colors.red,
          transitionType: ContainerTransitionType.fadeThrough,
          openBuilder: (context, action) {
            return second("Title");
          },
          closedBuilder: (context, action) {
            return FloatingActionButton(
                child: Icon(Icons.add), onPressed: null);
          }),
    );
  }
}
