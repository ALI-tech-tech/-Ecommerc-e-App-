import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueryNotifier extends StateNotifier<String> {
  QueryNotifier() : super('');

  void setQuery(String query) {
    state = query;
  }
}

final searchQueryProvider = StateNotifierProvider<QueryNotifier, String>((ref) {
  return QueryNotifier();
});

final selectedQueryProvider =
    StateNotifierProvider<QueryNotifier, String>((ref) {
  return QueryNotifier();
});
