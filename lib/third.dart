import 'package:flutter/material.dart';

class third extends StatefulWidget {
  List l;
  int index;

  third(this.l, this.index);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  PageController? pg;

  @override
  void initState() {
    super.initState();
    pg = PageController(initialPage: widget.index);
  }

  @override
  Widget build(BuildContext context) {
    double status = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: status),
            child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              print(value);
              widget.index = value;
            });
          },
          controller: pg,
          itemCount: widget.l.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("${widget.l[widget.index]}"),
                      fit: BoxFit.fill)),
            );
          },
        ),
      ),
    );
  }
}
