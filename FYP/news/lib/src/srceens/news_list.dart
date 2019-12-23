import 'package:flutter/material.dart';
import 'package:news/src/blocs/stories_bloc.dart';
import '../blocs/stories_provider.dart';
import '../widgets/news_list_tile.dart';
import '../widgets/refresh.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final bloc = StoriesProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: titals(_currentIndex),
      ),
      body: navbody(_currentIndex, bloc),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.web),
              title: Text('News'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('Fixtures'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list),
              title: Text('Stas'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Club Profile'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_device_information),
                title: Text('AboutUs'),
                backgroundColor: Colors.blue),
          ]),
    );
  }

  Widget titals(int currentind) {
    switch (currentind) {
      case 0:
        return Text('Anfa News');
      case 1:
        return Text('Fixtures');
      case 2:
        return Text('stat');
      case 3:
        return Text('club Profile');
      case 4:
        return Text('About us');
        break;
      default:
        return Text('Anfa News');
    }
  }

  Widget navbody(int currentIndex, StoriesBloc bloc) {
    switch (currentIndex) {
      case 0:
        return buildList(bloc);
      case 1:
        return fixtureTile();
      case 2:
        return Text('stat');
      case 3:
        return Text('clubs profile');
      case 4:
        return Text('about us');
        break;
      default:
        return buildList(bloc);
    }
  }

  Widget buildList(StoriesBloc bloc) {
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context, AsyncSnapshot<List<int>> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Refresh(
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, int index) {
              bloc.fetchItem(snapshot.data[index]);
              return NewsListTile(
                itemId: snapshot.data[index],
              );
            },
          ),
        );
      },
    );
  }

  Widget fixtureTile() {
    return Column(
      children: <Widget>[
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('Nepal Police Club Vs Three Star Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('Manang Marsyandi Club Vs Sankata Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('APF Club Vs Tribhuwan Army Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('Friends Club Vs Jawalakhel Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('Chashal youth Club Vs Sankata youth Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
        Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: ListTile(
            onTap: () {},
            title: Text('Satdobato Club Vs Jhapa XI Club'),
            subtitle: Row(
              children: <Widget>[
                Text('Dasarat Stadium'),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('3:00PM'),
              ],
            ),
          ),
        ),
        Divider(
          height: 8.0,
        ),
      ],
    );
  }
}
