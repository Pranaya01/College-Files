//import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_modal.dart';
import '../resources/repository.dart';
import 'dart:async';

class StoriesBloc {
  final _repository = Repository();
  final _topIds = PublishSubject<List<int>>();
  final _itemsOutput = BehaviorSubject<Map<int,Future<ItemModel>>>();
  final _itemsFetcher = PublishSubject<int>();

  //Observable<Map<int,Future<ItemModel>>> items;
//getter to streams
  Observable<List<int>> get topIds => _topIds.stream;
  Observable<Map<int, Future<ItemModel>>> get items => _itemsOutput.stream;
  //getters to sink
  Function(int) get fetchItem=>_itemsFetcher.sink.add;

  StoriesBloc() {
    //items = _items.stream.transform(_itemsTransformer());
    _itemsFetcher.stream.transform(_itemsTransformer()).pipe(_itemsOutput);
  }
  fetchTopIds() async {
    final ids = await _repository.fetchTopIds();
    _topIds.sink.add(ids);
  }
  clearCache() {
    return _repository.clearCache();
  }
_itemsTransformer() {
  return ScanStreamTransformer(
    (Map<int,Future<ItemModel>> cache, int id, index) {
      print(index);
     cache[id]  = _repository.fetchItem(id);
    return cache;
    },
    <int,Future<ItemModel>>{},
  );
}
  dispose() {
    _topIds.close();
    _itemsOutput.close();
    _itemsFetcher.close();
  }
}
