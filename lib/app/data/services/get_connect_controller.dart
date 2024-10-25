// get connect control
import 'package:get/get.dart';
import '../models/article.dart';

class GetConnectController extends GetConnect {
  static const String _baseUrl = 'https://my-json-server.typicode.com/Fallid/codelab-api/db';


  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true; // set loading state to true
      final response = await get(
          '${_baseUrl}');

      if (response.statusCode == 200) {
        final articlesResult = Articles.fromJson(response.body);
        articles.value = articlesResult.articles;
      } else {
        print("Request failed with status ${response.statusCode}");
      }
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      isLoading.value = false; // set status loading to false when it done
    }
  }
}
