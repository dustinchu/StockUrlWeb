import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'uril.dart';

class MinSize extends StatelessWidget {
  const MinSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            height: h,
            width: w,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 100, bottom: 100),
                      child: Container(
                        height: h / 2 - 100,
                        child: Image.asset("assets/iphone-logo.png"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Download Now",
                          style: TextStyle(
                              fontSize: getStringSize(w, true),
                              color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          width: 200,
                          height: 3,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: AutoSizeText(
                          "股市行事曆StockCalendar",
                          style: TextStyle(
                              fontSize: getStringSize(w, true),
                              color: Colors.white),
                          minFontSize: 20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: AutoSizeText(
                          "製作屬於你的股市預測 分享給你的朋友",
                          style: TextStyle(
                              fontSize: getStringSize(w, false),
                              color: Colors.white),
                          minFontSize: 20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      urlBtn(false)
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: h,
            width: w,
            color: Color.fromRGBO(88, 93, 123, 1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 100, bottom: 100),
                      child: Container(
                        height: h / 2 - 100,
                        child: Image.asset("assets/home.png"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "製作屬於你的股市預測",
                        style: TextStyle(
                            fontSize: getStringSize(w, true),
                            color: Colors.white),
                        minFontSize: 20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          width: 200,
                          height: 3,
                          color: Colors.white,
                        ),
                      ),
                      AutoSizeText(
                        "可以輸入標題以外",
                        style: TextStyle(
                            fontSize: getStringSize(w, true),
                            color: Colors.white),
                        minFontSize: 20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        "也可以在日期內輸入你預期漲跌價格",
                        style: TextStyle(
                            fontSize: getStringSize(w, true),
                            color: Colors.white),
                        minFontSize: 20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      urlBtn(false)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: h,
            width: w,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 100, bottom: 100),
                      child: Container(
                        height: h / 2 - 100,
                        child: Image.asset("assets/save.png"),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("保存",
                          style: TextStyle(
                              fontSize: getStringSize(w, true),
                              color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          width: 200,
                          height: 3,
                          color: Colors.white,
                        ),
                      ),
                      AutoSizeText(
                        "點擊儲存後就會將您製作的行事曆存在您的相冊",
                        style: TextStyle(
                            fontSize: getStringSize(w, true),
                            color: Colors.white),
                        minFontSize: 10,
                        stepGranularity: 10,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        "方便與周遭朋友分享您的預測",
                        style: TextStyle(
                            fontSize: getStringSize(w, true),
                            color: Colors.white),
                        minFontSize: 10,
                        stepGranularity: 10,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      urlBtn(false)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
