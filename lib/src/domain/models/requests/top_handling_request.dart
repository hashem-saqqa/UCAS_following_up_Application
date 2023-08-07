import '../../../util/constants/strings.dart';
import '../../../util/constants/nums.dart';

class TopHandlingNewsRequest {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  TopHandlingNewsRequest(
      {this.apiKey = defaultApiKey,
      this.page = 1,
      this.pageSize = defaultPageSize,
      this.country = "us",
      this.category = "general"});
}
