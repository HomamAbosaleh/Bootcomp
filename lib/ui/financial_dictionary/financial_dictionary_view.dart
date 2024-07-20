import 'package:finance_app/core/models/topic.dart';
import 'package:flutter/material.dart';

class FinancialDictionary extends StatelessWidget {
  final String courseTitle;
  final List<Topic> topics;

  const FinancialDictionary(
      {super.key, required this.courseTitle, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF94B9FF), Color(0xFFF4F1F1)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(courseTitle),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: topics
                  .map(
                    (topic) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                topic.image,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              topic.title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(topic.content),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.thumb_up),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.thumb_down),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.bookmark),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
