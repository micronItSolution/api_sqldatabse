import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sapna_practical/Extensions/text_styles.dart';
import 'package:sapna_practical/components/cache_image_widget.dart';
import 'package:sapna_practical/extensions/common_extensions.dart';
import 'package:sapna_practical/extensions/validation_extensions.dart';
import 'package:sapna_practical/screens/detail_screen.dart';
import 'package:sapna_practical/utils/app_images.dart';
import 'package:sticky_headers/sticky_headers.dart';

import '../helper/database_helper.dart';
import '../model/event_model.dart';
import '../network/rest_apis.dart';
import '../utils/app_common.dart';

class EventListScreen extends StatefulWidget {
  const EventListScreen({super.key});

  @override
  State<EventListScreen> createState() => _EventListScreenState();
}

class _EventListScreenState extends State<EventListScreen> {
  // List<Events> list = [];
  List<Events> eventList = [];
  bool isLoading = false;
  ScrollController scrollController = ScrollController();
  int page = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController()..addListener(_scrollListener);
    init();
  }

  init() async {
    setState(() {
      isLoading = true;
    });
    await fetchAlbum().then((value) {
      value.events!.map((e) {
        eventList.add(e);
      }).toList();
      isLoading = false;
      setState(() {});
    }).catchError((e) {
      showToast(e.toString());
    });
  }

  void _scrollListener() {
    print(scrollController.position.extentAfter);
    if (scrollController.position.extentAfter < eventList.length) {
      setState(() {
        eventList.addAll(eventList);
      });
    }
  }

// Insert a new data to the database
  Future<void> addItem(Events events) async {
    await DatabaseHelper.createItem(events.title, events.description);
    _refreshData();
  }

  //get data from db
  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    print(data);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 0,
        title: Text(
          "Events",
          style: boldTextStyle(fontSize: 24),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
        // New parameter:
        scrolledUnderElevation: 0,
      ),
      body: !isLoading
          ? ListView.builder(
              controller: scrollController,
              itemCount: eventList.length,
              itemBuilder: (context, index) {
                return StickyHeader(

                  header: Container(
                    height: 100.0,
                    color: Colors.grey.shade50,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: MediaQuery.of(context).size.width / 4,
                        ),
                        Spacer(),
                        Text(
                          DateFormat('MMMM').format(
                            DateTime(
                              0,
                              int.parse(eventList[index]
                                  .startDateDetails!
                                  .month
                                  .toString()),
                            ),
                          ),
                          style: secondaryTextStyle(),
                        ),
                        Text(
                          " - " +
                              eventList[index]
                                  .startDateDetails!
                                  .year
                                  .toString(),
                          style: secondaryTextStyle(),
                        ),
                        Spacer(),
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: MediaQuery.of(context).size.width / 4,
                        ),
                      ],
                    ),
                  ),
                  content: GestureDetector(
                    onTap: () {
                      //on tap add data to local database
                      addItem(eventList[index]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailScreen(eventData: eventList[index])),
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 5.0,
                                  offset: Offset(0.0, 3.0)),
                            ],
                            // border: Border.all(color: AppColors.borderColor),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                eventList[index].image == null
                                    ? Container(
                                        color: Colors.grey,
                                        height: 100,
                                        width: 100)
                                    : CachedImageWidget(
                                        url: eventList[index]
                                            .image!
                                            .url
                                            .validateString(),
                                        height: 100,
                                        width: 100,
                                      ),
                                widthSpacer(8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        getDateOnList(
                                            eventList[index].startDateDetails!,
                                            eventList[index].endDateDetails!),
                                        style: boldTextStyle(
                                            fontColor: Colors.blue,
                                            fontSize: 14),
                                      ),
                                      heightSpacer(8),
                                      Text(
                                        eventList[index].title.validateString(),
                                        style: boldTextStyle(),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                );
              })
          : Center(child: CircularProgressIndicator()),
    );
  }
}
