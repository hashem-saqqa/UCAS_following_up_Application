import 'package:equatable/equatable.dart';

import '../artical.dart';

class TopHandlingNewsResponse extends Equatable {
  final String status;
  final int totalResults;
  final List<Article> articles;

  TopHandlingNewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory TopHandlingNewsResponse.fromMap(Map<String, dynamic> map) {
    return TopHandlingNewsResponse(
      status: (map['status'] ?? '') as String,
      totalResults: (map['totalResults'] ?? 0) as int,
      articles: List<Article>.from(
        map['articles'].map<Article>(
              (x) => Article.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, totalResults, articles];
}