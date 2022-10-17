import 'package:flutter/material.dart';
import 'package:news_clone/constants/color_constants.dart';
import 'package:news_clone/constants/math_utils.dart';
import 'package:news_clone/constants/app_decoration.dart';
import 'package:news_clone/constants/app_style.dart';
import 'package:news_clone/widgets/common_image_view.dart';

import 'package:news_clone/models/feed_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.article}) : super(key: key);

  final FeedModel article;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: size.width,
              child: Container(
                decoration: AppDecoration.fillWhiteA700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(left: 14, bottom: 10),
                      child: InkWell(
                        onTap: () {},
                        child: CommonImageView(
                          //imagePath: 'assets/icons/back_arrow.png',
                          height: getVerticalSize(8.00),
                          width: getHorizontalSize(18.00),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(right: 22, bottom: 11),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(bottom: 1),
                            child: Text(
                              'Share',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium12Gray500,
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 7),
                            child: CommonImageView(
                              //imagePath: 'assets/images/share.png',
                              height: getVerticalSize(7.00),
                              width: getHorizontalSize(15.00),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(bottom: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          url: article.image.toString(),
                          height: getVerticalSize(180.00),
                          width: getHorizontalSize(360.00),
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(310.00),
                        margin: getMargin(left: 20, top: 10, right: 20),
                        child: Text(
                          article.title,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold14,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(left: 20, top: 5, right: 20),
                          child: Text(
                            article.publishDate.toIso8601String(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratBold10Gray500,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(1.00),
                        width: getHorizontalSize(320.00),
                        margin: getMargin(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                          color: ColorConstants.gray200,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(296.00),
                        margin: getMargin(left: 20, top: 22, right: 20),
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: article.description,
                              style: TextStyle(
                                color: ColorConstants.bluegray900,
                                fontSize: getFontSize(14),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 1.43,
                              ),
                            ),
                          ]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
