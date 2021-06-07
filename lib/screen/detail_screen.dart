import 'package:app_submission_dicoding/models/games.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GamesItem? games = ModalRoute.of(context)!.settings.arguments as GamesItem?;

    return Scaffold(
      body: Column(
        children: [
          _headerGames(context, games!),
          _infoGames(context, games),
        ],
      ),
      bottomSheet: _bottomGames(context, games),
    );
  }

  Widget _bottomGames(BuildContext context, GamesItem games) {
    return Container(
      height: 42 * 2,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  games.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _addGamesToCart(context, games);
              },
              child: Text(
                'Add To Cart',
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _addGamesToCart(BuildContext context, GamesItem games) {
    _snackBarSuccess(context, '${games.name} Added To Cart');
  }

  void _snackBarSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(message),
            Icon(
              Icons.check,
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _addGamesToFavorite(BuildContext context, GamesItem games) {
    _snackBarSuccess(context, '${games.name} Added To Favorite');
  }

  Widget _infoGames(BuildContext context, GamesItem games) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      games.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      games.productBy,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      _addGamesToFavorite(context, games);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overview',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
                Text(
                  games.description,
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 42,
          ),
        ],
      ),
    );
  }

  Widget _headerGames(BuildContext context, GamesItem games) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          child: Image.network(
            games.image,
            fit: BoxFit.cover,
            height: 300,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        )
      ],
    );
  }
}
