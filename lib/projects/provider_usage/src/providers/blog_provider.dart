import 'package:flutter/foundation.dart';
import 'package:helper_project/projects/provider_usage/src/enums/loading_state.dart';
import 'package:helper_project/projects/provider_usage/src/models/blog_model.dart';
import 'package:helper_project/projects/provider_usage/src/services/blog_services.dart';

class BlogProvider extends ChangeNotifier {
  // state
  LoadingState _state = LoadingState.loading;
  LoadingState get state => _state;

  // Our list
  final List<Blog> _blog = [];
  List<Blog> get blog => _blog;

  // Our Data
  BlogModel? _blogModel;
  BlogModel? get blogModel => _blogModel;

  // page number
  int _page = 1;
  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  // Fetch data from API
  fetchBlog({
    bool? isRefreshing = false,
  }) {
    _state = LoadingState.loading;
    notifyListeners();

    if (isRefreshing!) {
      _blog.clear();
      _page = 1;
      notifyListeners();
    }

    try {
      BlogServices.fetchBlog(page: page.toString()).then(
        (value) {
          _blogModel = value;
          final list = value.data!
              .where((newData) => _blog.any(
                    (oldData) => (oldData.id == newData.id),
                  ))
              .toList();
          _blog.addAll(list.isEmpty ? value.data!.toList() : list);
          _state = LoadingState.done;
          notifyListeners();
        },
      ).onError(
        (error, stackTrace) {
          _state = LoadingState.failed;
          notifyListeners();
        },
      );
    } catch (e) {
      print(e);
      _state = LoadingState.failed;
      notifyListeners();
    }
  }
}
