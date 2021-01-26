import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'max_size.dart';
import 'mix_size.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StockCalendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'StockCalendar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  Widget type(double w) {
    if (w < 650) return Column();
    return Row();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              //Assign the controller to my scrollable widget
              controller: _controller,
              child: w < 790 ? MinSize() : MaxSize(),
              // child: Column(
              //   children: [
              //     Container(
              //       height: h,
              //       width: w,
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.only(top: 100, bottom: 100),
              //               child: Image.asset("assets/iphone-logo.png"),
              //             ),
              //             SizedBox(
              //               width: 80,
              //             ),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text("Download Now",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, true),
              //                         color: Colors.white)),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 10, bottom: 20),
              //                   child: Container(
              //                     width: 200,
              //                     height: 3,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(bottom: 20),
              //                   child: AutoSizeText(
              //                     "股市行事曆StockCalendar",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, true),
              //                         color: Colors.white),
              //                     minFontSize: 20,
              //                     maxLines: 2,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 20, bottom: 20),
              //                   child: AutoSizeText(
              //                     "製作屬於你的股市預測 分享給你的朋友",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, false),
              //                         color: Colors.white),
              //                     minFontSize: 20,
              //                     maxLines: 2,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //                 urlBtn()
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //     Container(
              //       height: h,
              //       width: w,
              //       color: Color.fromRGBO(88, 93, 123, 1),
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 AutoSizeText(
              //                   "製作屬於你的股市預測",
              //                   style: TextStyle(
              //                       fontSize: getStringSize(w, true),
              //                       color: Colors.white),
              //                   minFontSize: 20,
              //                   maxLines: 2,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 10, bottom: 20),
              //                   child: Container(
              //                     width: 200,
              //                     height: 3,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(bottom: 20),
              //                   child: AutoSizeText(
              //                     "可以輸入標題以外\n也可以在日期內輸入你預期漲跌價格",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, true),
              //                         color: Colors.white),
              //                     minFontSize: 20,
              //                     maxLines: 2,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //                 urlBtn()
              //               ],
              //             ),
              //             SizedBox(
              //               width: 80,
              //             ),
              //             Padding(
              //               padding: EdgeInsets.only(top: 100, bottom: 100),
              //               child: Image.asset("assets/home.png"),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     Container(
              //       height: h,
              //       width: w,
              //       child: Center(
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Padding(
              //               padding: EdgeInsets.only(top: 100, bottom: 100),
              //               child: Image.asset("assets/save.png"),
              //             ),
              //             SizedBox(
              //               width: 80,
              //             ),
              //             Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text("保存",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, true),
              //                         color: Colors.white)),
              //                 Padding(
              //                   padding: EdgeInsets.only(top: 10, bottom: 20),
              //                   child: Container(
              //                     width: 200,
              //                     height: 3,
              //                     color: Colors.white,
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: EdgeInsets.only(bottom: 20),
              //                   child: AutoSizeText(
              //                     "點擊儲存後就會將您製作的行事曆存在您的相冊\n方便與周遭朋友分享您的預測",
              //                     style: TextStyle(
              //                         fontSize: getStringSize(w, true),
              //                         color: Colors.white),
              //                     minFontSize: 10,
              //                     stepGranularity: 10,
              //                     maxLines: 4,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //                 urlBtn()
              //               ],
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
