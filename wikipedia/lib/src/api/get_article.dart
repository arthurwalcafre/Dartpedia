import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../model/article.dart';

Future<List<Article>> getArticleByTitle(String articleTitle) async {
  final http.Client client = http.Client();
  try {
    final Uri url = Uri.https(
      'en.wikipedia.org',
      '/w/api.php',
      {
        'action': 'query',
        'format': 'json',
        'prop': 'extracts',
        'titles': articleTitle,
        'explaintext': '1',
        'exlimit': 'max',
      },
    );
    final http.Response response = await client.get(url);
    if (response.statusCode == 200) {
      final Map<String, Object?> jsonData = jsonDecode(response.body) as Map<String, Object?>;
      return Article.listFromJson(jsonData); 
    } else {
      throw HttpException(
        '[WikipediaDart.getArticleByTitle] statusCode=${response.statusCode}, body=${response.body}',
        uri: url,
      );
    }
  } on FormatException {
    rethrow;
  } finally {
    client.close();
  }
}
