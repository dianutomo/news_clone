import 'package:flutter/material.dart';
import 'package:news_clone/constants/app_style.dart';
import 'package:news_clone/constants/color_constants.dart';
import 'package:news_clone/constants/gradient_constants.dart';
import 'package:news_clone/constants/math_utils.dart';
import 'package:news_clone/models/feed_model.dart';
//import 'package:news_clone/views/news/widget/detail_page.dart';
import 'package:news_clone/widgets/common_image_view.dart';

import 'package:news_clone/views/feed/widget/detail_page_backup.dart';
import 'package:flutter_html/flutter_html.dart';

class FeedWidget extends StatelessWidget {
  //final List<FeedModel> feedData;
  final FeedModel feedData;
  const FeedWidget({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    Container body = Container(
      color: ColorConstants.whiteColor,
      child: Padding(
        padding: getPadding(top: 20, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstants.whiteA700,
            borderRadius: BorderRadius.all(Radius.circular(getSize(20))),
            boxShadow: [
              BoxShadow(
                color: ColorConstants.black90019,
                spreadRadius: getHorizontalSize(2.00),
                blurRadius: getHorizontalSize(2.00),
                offset: const Offset(0, 0),
              )
            ],
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CommonImageView(
                    height: getSize(160),
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    url: feedData.image,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: getSize(67),
                  decoration: Gradients.feedGradient,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(bottom: 10, left: 10, right: 10),
                          child: Text(
                            feedData.title,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular12Pink800
                                .copyWith(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  article: feedData,
                ),
              ));
        },
        child: body,
      ),
    );
  }
}
