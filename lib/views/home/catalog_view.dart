import 'package:flutter/material.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(16),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Beer(
                  isFavorite: true,
                  imageSrc:
                      'https://emporiodacerveja.vtexassets.com/arquivos/ids/173479/ribeiraoLager1_1000x1000px.jpg',
                  beerName: 'Ribeirão Lager',
                  beerType: 'Lager',
                  beerIBU: 20,
                  beerRating: 5,
                  beerABV: 4.5,
                  obs:
                      'Ótima lager de Ribeirão Preto, fácil de encontrar e combina com qualquer ocasião.',
                ),
                Beer(
                  imageSrc:
                      'https://www.mambo.com.br/ccstore/v1/images/?source=/file/v8128878785442628016/products/204726_1_Cerveja-Baden-Baden-Golden-Garrafa-600ml.jpg',
                  beerName: 'Baden Baden Golden',
                  beerType: 'Weiss',
                  beerIBU: 10,
                  beerABV: 4.9,
                  beerRating: 4,
                  obs: 'Weiss com leve sabor de canela, muito boa!',
                ),
                Beer(
                  imageSrc:
                      'https://www.mambo.com.br/ccstore/v1/images/?source=/file/v8128878785442628016/products/204726_1_Cerveja-Baden-Baden-Golden-Garrafa-600ml.jpg',
                  beerName: 'Baden Baden Golden',
                  beerType: 'Weiss',
                  beerIBU: 10,
                  beerABV: 5.5,
                  beerRating: 4,
                  obs: 'Weiss com leve sabor de canela, muito boa!',
                ),
              ],
            );
          }),
    );
  }
}

class Beer extends StatelessWidget {
  final bool isFavorite;
  final String imageSrc;
  final String beerName;
  final String beerType;
  final int beerIBU;
  final double beerABV;
  final int beerRating;
  final String obs;

  const Beer({
    Key key,
    this.imageSrc,
    this.beerType,
    this.beerIBU,
    this.beerABV,
    this.beerRating,
    this.obs,
    this.isFavorite = false,
    this.beerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 180,
                  child: FadeInImage.assetNetwork(
                    width: 160,
                    fit: BoxFit.contain,
                    image: imageSrc,
                    placeholder: 'img/img-placeholder.png',
                  )),
              Container(
                height: 180,
                child: VerticalDivider(
                  color: Colors.grey[400],
                  thickness: 1,
                  width: 1,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Infos(
                  beerName: beerName,
                  beerType: beerType,
                  beerIBU: beerIBU,
                  beerABV: beerABV,
                  beerRating: beerRating),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 12, 0),
                      child: this.isFavorite
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red[700],
                            )
                          : null,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Infos extends StatelessWidget {
  final String beerName;
  final String beerType;
  final int beerIBU;
  final double beerABV;
  final int beerRating;

  const Infos(
      {Key key,
      this.beerType,
      this.beerIBU,
      this.beerABV,
      this.beerRating,
      this.beerName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 16, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(
                beerName,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: BeerRating(
                  value: beerRating,
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Column(
                children: [
                  TagBeerType(
                    beerType: beerType,
                    text: beerType,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      Text('IBU'),
                      TagBeerIBU(
                        beerIBU: beerIBU,
                        text: beerIBU.toString(),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Column(
                    children: [
                      Text('ABV'),
                      TagBeerABV(beerABV: beerABV),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TagBeerABV extends StatelessWidget {
  const TagBeerABV({
    Key key,
    @required this.beerABV,
  }) : super(key: key);

  final double beerABV;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(10),
        right: Radius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          beerABV.toString() + '%',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class TagBeerType extends StatelessWidget {
  final String beerType;
  final String text;

  Color _getColorByBeerType(String beerType) {
    switch (beerType) {
      case 'Weiss':
        return Colors.amber[200];
        break;
      case 'Lager':
        return Colors.amber[400];
        break;
      default:
        return Colors.grey[400];
    }
  }

  const TagBeerType({Key key, this.beerType, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: _getColorByBeerType(beerType),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class TagBeerIBU extends StatelessWidget {
  final int beerIBU;
  final String text;

  Color _getColorByBeerIBU(int beerIBU) {
    switch (beerIBU) {
      case 10:
        return Colors.teal[100];
        break;
      case 20:
        return Colors.teal[300];
        break;
      default:
        return Colors.grey[400];
    }
  }

  const TagBeerIBU({Key key, this.beerIBU, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: _getColorByBeerIBU(beerIBU),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(10),
          right: Radius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class BeerRating extends StatelessWidget {
  final int value;
  const BeerRating({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return IconTheme(
          data: IconThemeData(color: Colors.amber, size: 18),
          child: Icon(
            index < value ? Icons.star : Icons.star_border,
          ),
        );
      }),
    );
  }
}
