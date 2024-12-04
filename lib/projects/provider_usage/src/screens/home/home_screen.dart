import 'package:flutter/material.dart';
import 'package:helper_project/projects/provider_usage/src/enums/loading_state.dart';
import 'package:helper_project/projects/provider_usage/src/providers/blog_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) {
        context.read<BlogProvider>().fetchBlog();
      },
    );
  }

  //   void _scrollListener() {
//     final currentPage = _pageController?.page ?? 0;
//     final totalPages = _pageController!.position.maxScrollExtent /
//         _pageController!.position.viewportDimension;

//     // Trigger fetchMore() when 90% of the scroll is reached
//     print("$currentPage / $totalPages ");
//     if (currentPage >= (totalPages ?? 0) - 1.5) {
//       context.read<FollowingListProvider>().fetchMore();
//     }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Consumer<BlogProvider>(
        builder: (context, provider, _) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<BlogProvider>().fetchBlog(isRefreshing: true);
            },
            child: SizedBox(child: Builder(
              builder: (context) {
                switch (provider.state) {
                  case LoadingState.loading:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case LoadingState.failed:
                    return const Center(
                      child: Text("Failed to ferch Data"),
                    );
                  case LoadingState.done:
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  var blog = provider.blog[index];
                                  return CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(blog.media!.source!),

                                    // child: Image.network(blog.media!.source!),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 10),
                                itemCount: provider.blog.length),
                          ),
                          ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                var blog = provider.blog[index];
                                return Card.filled(
                                  child: Column(
                                    children: [
                                      Image.network(blog.media!.source!),
                                      Text(blog.title!)
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 10),
                              itemCount: provider.blog.length),
                        ],
                      ),
                    );

                  default:
                    return const SizedBox();
                }
              },
            )),
          );
        },
      ),
    );
  }
}
