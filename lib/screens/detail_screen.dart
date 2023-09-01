import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:sapna_practical/Extensions/text_styles.dart';
import 'package:sapna_practical/components/cache_image_widget.dart';
import 'package:sapna_practical/extensions/common_extensions.dart';
import 'package:sapna_practical/extensions/validation_extensions.dart';

import '../model/event_model.dart';
import '../utils/app_common.dart';

class DetailScreen extends StatefulWidget {
  final Events eventData;
  const DetailScreen({super.key,required this.eventData});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace:  FlexibleSpaceBar(
              title: Text('Event detail'),
              centerTitle: true,
              background: widget.eventData.image==null? FlutterLogo():CachedImageWidget(url: widget.eventData.image!.url.validateString(), height: 250),
            ),
          ),
          SliverToBoxAdapter(
            // hasScrollBody: false,
            child: Container(
              padding:EdgeInsets.all(16),
              child:  Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding:EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Icon(Icons.calendar_month,color: Colors.blue.shade700,size: 32,),
                      ),
                      widthSpacer(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(getDate(widget.eventData.startDateDetails!),style: boldTextStyle(),),
                          heightSpacer(2),
                          Text("Event Start date",style: primaryTextStyle(size: 14),),
                        ],
                      )
                    ],
                  ),
                  heightSpacer(16),
                  Row(
                    children: [
                      Container(
                        padding:EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Colors.blue.shade200,borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Icon(Icons.calendar_month,color: Colors.blue.shade700,size: 32,),
                      ),
                      widthSpacer(8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(getDate(widget.eventData.endDateDetails!),style: boldTextStyle(),),
                          heightSpacer(2),
                          Text("Event End date",style: primaryTextStyle(size: 14),),
                        ],
                      )
                    ],
                  ),
                  heightSpacer(16),
                  // Text(widget.eventData.title.validateString(),style: boldTextStyle(height: 16)),
                  Html(data:widget.eventData.title.validateString()),
                  heightSpacer(16),
                  Html(data:widget.eventData.description.validateString())
                ],
              ),
            ),
          ),

        ]),
    );
  }
}
