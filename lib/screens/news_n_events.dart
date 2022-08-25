import 'package:flutter/material.dart';
import 'package:kgisl_gi/widgets/menu.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LatestNewsNEventsScreen extends StatelessWidget {
  LatestNewsNEventsScreen({Key? key}) : super(key: key);

  final news = [
    NewsItemModel(
      datePublished: "Date: APRIL 15, 2022",
      news: "Application filed seeking GI tag for the famous Chettinad Athangudi tiles",
      readMoreUrl:
          "https://www.thehindu.com/news/national/tamil-nadu/application-filed-seeking-gi-tag-for-the-famous-chettinad-athangudi-tiles/article65323352.ece",
    ),
    NewsItemModel(
      datePublished: "Date: SEPTEMBER 27, 2021",
      news: "Assam's rice wine Judima gets GI tag",
      readMoreUrl:
          "https://www.thehindu.com/news/national/other-states/assams-rice-wine-judima-gets-gi-tag/article36687514.ece",
    ),
    NewsItemModel(
      datePublished: "Date: JULY 30, 2016",
      news: "Paneer and the origin of cheese in India",
      readMoreUrl:
          "https://www.thehindu.com/news/cities/mumbai/Paneer-and-the-origin-of-cheese-in-India/article14516958.ece",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.grey.shade100,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                  child: Text(
                    "Latest News and Events",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ...news
                    .map((e) => Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 20),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.datePublished,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 10),
                                child: Text(
                                  e.news,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Center(
                                child: TextButton(
                                  onPressed: () async {
                                    await launchUrlString(e.readMoreUrl);
                                  },
                                  child: Text(
                                    "Read More",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(200, 40)),
                                    backgroundColor: MaterialStateProperty.all(Colors.green),
                                    padding:
                                        MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Haven't you register GI for your product?",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Apply for GI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(200, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NewsItemModel {
  final String datePublished;
  final String news;
  final String readMoreUrl;

  NewsItemModel({
    required this.datePublished,
    required this.news,
    required this.readMoreUrl,
  });
}
