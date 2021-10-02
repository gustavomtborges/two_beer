import 'package:flutter/material.dart';
import 'package:two_beer/models/Beer.dart';

import 'beer_item_widget.dart';

class BeerList extends StatelessWidget {
  final List<Beer> beers;

  BeerList({required this.beers});

  @override
  Widget build(BuildContext context) {
    return beers.length > 1
        ? ListView(
            padding: EdgeInsets.all(4),
            children: beers.length > 1
                ? beers
                    .map((beer) => BeerItem(
                        key: Key(beer.id),
                        imageSrc: beer.imgSrc,
                        beerType: beer.type,
                        beerIBU: beer.ibu,
                        beerABV: beer.abv,
                        beerScore: beer.score,
                        description: 'desc',
                        isFavorite: beer.isFavorite,
                        beerName: beer.name))
                    .toList()
                : [],
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tá na hora de tomar uma pra adicionar aqui!',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.sports_bar,
                  color: Colors.amber[700],
                  size: 24,
                )
              ],
            ),
          );
  }
}
