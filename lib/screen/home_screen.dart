import 'package:flutter/material.dart';
import 'package:app_submission_dicoding/models/games.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hallo, Julius'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/login");
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: _homePage(),
    );
  }

  Widget _homePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15),
          child: Text(
            'All Product',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            itemCount: gamesItemList.length,
            itemBuilder: (BuildContext context, int index) {
              return _itemList(gamesItemList[index]);
            },
          ),
        )
      ],
    );
  }

  Widget _itemList(GamesItem games) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/detail', arguments: games);
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
        child: Container(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                child: Image.network(
                  games.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                games.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                games.productBy,
                                style: TextStyle(color: Colors.grey.shade800),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                Text(
                                  '${games.rate} (${games.downloaded})',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              games.price,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
