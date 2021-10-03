import 'package:flutter/material.dart';
import 'package:two_beer/models/Beer.dart';

import 'beer_info_widget.dart';

class BeerItem extends StatelessWidget {
  final Beer beer;

  const BeerItem({
    required Key key,
    required this.beer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.grey.shade300, width: 1),
      ),
      elevation: 2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 160,
              child: beer.imgSrc != ''
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.assetNetwork(
                        image: beer.imgSrc,
                        placeholder: 'img/img-placeholder.png',
                      ),
                    )
                  : Image.asset(
                      'img/img-placeholder.png',
                    ),
            ),
          ),
          Expanded(
            child: BeerInfo(
              key: ValueKey(beer.imgSrc),
              beerName: beer.name,
              beerType: beer.type,
              beerIBU: beer.ibu,
              beerABV: beer.abv,
              beerRating: beer.score,
            ),
          ),
        ],
      ),
    );
  }
}
