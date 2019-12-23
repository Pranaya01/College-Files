import 'package:flutter/material.dart';
import '../blocs/comments_provider.dart';
import 'dart:async';
import '../models/item_modal.dart';
import '../widgets/comment.dart';

class NewsDetail extends StatelessWidget {
  final int itemId;
  NewsDetail({this.itemId});
  Widget build(context) {
    final bloc = CommentsProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: buildBody(bloc),
    );
  }

  Widget buildBody(CommentsBloc bloc) {
    return StreamBuilder(
      stream: bloc.itemWithComments,
      builder: (context, AsyncSnapshot<Map<int, Future<ItemModel>>> sanpshot) {
        if (!sanpshot.hasData) {
          return Text('loading');
        }
        final itemFuture = sanpshot.data[itemId];
        return FutureBuilder(
          future: itemFuture,
          builder: (context, AsyncSnapshot<ItemModel> itemSnapshot) {
            if (!itemSnapshot.hasData) {
              return Text('loading');
            }
            return buildList(itemSnapshot.data, sanpshot.data);
          },
        );
      },
    );
  }

  Widget buildList(ItemModel item, Map<int, Future<ItemModel>> itemMap) {
    final children = <Widget>[];
    children.add(buildTitle(item));
    final commentList = item.kids.map((kidid) {
      return Comment(
        itemId: kidid,
        itemMap: itemMap,
        depth: 0,
      );
    }).toList();
    children.addAll(commentList);
    return ListView(
      children: children,
    );
  }

  Widget buildTitle(ItemModel item) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(10.0),
      child: Text(
        item.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
