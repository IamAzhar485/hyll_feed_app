import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../feed.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late Future<Feed> futureAlbum;

  @override
  void initState() {
    super.initState();
    var feedProvider = Provider.of<FeedProvider>(context, listen: false);
    futureAlbum = feedProvider.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Feed>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return FeedListWidget(
                feedData: snapshot.data?.data ?? [],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
