// import 'package:flutter/material.dart';
//
// import 'first.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: slpash(),
//     theme: ThemeData.dark(),
//   ));
// }
//
// class slpash extends StatefulWidget {
//   const slpash({Key? key}) : super(key: key);
//
//   @override
//   State<slpash> createState() => _slpashState();
// }
//
// class _slpashState extends State<slpash> {
//   @override
//   void initState() {
//     super.initState();
//     spl();
//   }
//
//   spl() async {
//     await Future.delayed(Duration(seconds: 3));
//     Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => first(),
//         ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double status = MediaQuery.of(context).padding.top;
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(top: status),
//         color: Color(0xff2196f3),
//         // decoration: BoxDecoration(
//         //     image: DecorationImage(
//         //         image: AssetImage("image/s1.jpg"), fit: BoxFit.fill)),
//         child: Center(
//           child: Icon(Icons.add_photo_alternate_outlined, size: 100),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:photo/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool animation = false;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          onEnd: () {
            setState(() {
              animation = !animation;
              i++;
            });
            if (i >= 4) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return home();
                },
              ));
            }
          },
          duration: Duration(seconds: 1),
          height: animation ? 200 : 101,
          width: animation ? 200 : 100,
          curve: Curves.linear,
          child: Text("Hardiak"),
          alignment: animation ? Alignment.bottomRight : Alignment.topLeft,
          decoration: BoxDecoration(
              color: animation ? Colors.amber : Colors.purple,
              borderRadius: animation
                  ? BorderRadius.all(Radius.circular(100))
                  : BorderRadius.all(Radius.circular(50))),
        ),
      ),
    );
  }
}
