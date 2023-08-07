import 'package:clean_arch/src/domain/models/requests/top_handling_request.dart';

import '../../util/resources/data_state.dart';
import '../models/responses/top_handling_response.dart';

abstract class ApiRepository {
  Future<DataState<TopHandlingNewsResponse>> getBreakingNewsArticles(
      {required TopHandlingNewsRequest request});
}
