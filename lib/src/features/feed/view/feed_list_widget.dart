import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

import '../model/feed_data.dart';

class FeedListWidget extends StatefulWidget {
  final List<FeedData> feedData;

  const FeedListWidget({super.key, required this.feedData});

  @override
  State<FeedListWidget> createState() => _FeedListWidgetState();
}

class _FeedListWidgetState extends State<FeedListWidget> {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.feedData.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.red,
          child: Stack(
            alignment: Alignment.center,
            children: [
              StoryView(
                controller: controller,
                storyItems: widget.feedData[index].contents!.map((e) {
                  if (e.contentType == "IMAGE") {
                    return StoryItem.inlineImage(
                      url: e.contentUrl!,
                      controller: controller,
                      caption: Text(
                        e.contentSource?.title ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black54,
                          fontSize: 17,
                        ),
                      ),
                    );
                  } else {
                    return StoryItem.pageVideo(
                      e.contentUrl!,
                      controller: controller,
                      caption: e.contentSource?.title ?? "",
                    );
                  }
                }).toList(),
                onStoryShow: (s) {
                  if (kDebugMode) {
                    print("Showing a story");
                  }
                },
                onComplete: () {
                  if (kDebugMode) {
                    print("Completed a cycle");
                  }
                },
                progressPosition: ProgressPosition.bottom,
                repeat: false,
                inline: false,
              ),
            ],
          ),
        );
      },
    );
  }
}
