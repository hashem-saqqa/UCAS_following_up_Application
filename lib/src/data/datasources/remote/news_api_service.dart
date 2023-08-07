import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/responses/top_handling_response.dart';
import '../../../util/constants/strings.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET("/top-headlines")
  Future<HttpResponse<TopHandlingNewsResponse>> getHeadlinesNews(
      {
        @Query("apiKey") String? apiKey,
        @Query("country") String? country,
        @Query("category") String? category,
        @Query("page") int? page,
        @Query("pageSize") int? pageSize
      });
}
