import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExampleActionStretch extends StatelessWidget {
  final GlobalKey<ExpansionTileCoreState> key0 = GlobalKey();

  ExampleActionStretch({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      expansionKey: key0,
      elevation: 3,
      textColor: Colors.green,
      isHasTrailing: false,
      title: _buildTitle(context),
      childrenPadding: EdgeInsets.zero,
      initiallyExpanded: false,
      subtitle: _buildSubtitle(context),
      isHideSubtitleOnExpanded: true,
      children: [_buildChildren(context)],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Abrodolph Lincoler',
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Business Account'.toUpperCase(),
                style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 18),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(Icons.arrow_upward_outlined, color: Colors.green),
              const SizedBox(
                width: 8,
              ),
              Text(
                '12.3%'.toUpperCase(),
                style: const TextStyle(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '\$33,814',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 42),
              ),
              Text(
                '.69',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Text(
            'See My Portfolio',
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 4,
          ),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  Widget _buildChildren(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => _buildItem(context, listData[index]),
      itemCount: listData.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }

  Widget _buildItem(BuildContext context, DataItem item) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.subtitle,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                item.price,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Text('${item.profit}%',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: item.profitColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
        // trailing: Text('${item.profit}%',
        //     style: TextStyle(
        //         color: item.profitColor,
        //         fontSize: 16,
        //         fontWeight: FontWeight.w600)),
        leading: Image.asset(
          item.imgUrl,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}

final listData = <DataItem>[
  DataItem(
      title: 'BTC',
      subtitle: 'Bitcoin',
      price: '\$64215.10',
      changedPrice: 12.3,
      imgUrl: 'assets/image/btc.png'),
  DataItem(
      title: 'ETH',
      subtitle: 'Ethereum',
      price: '\$3154.35',
      changedPrice: -6.3,
      imgUrl: 'assets/image/eth.png'),
  DataItem(
      title: 'SOL',
      subtitle: 'Solana',
      price: '\$164.54',
      changedPrice: -2.3,
      imgUrl: 'assets/image/sol.png'),
  DataItem(
      title: 'DOGE',
      subtitle: 'DogeCoin',
      price: '\$0.1161',
      changedPrice: -2.3,
      imgUrl: 'assets/image/doge.png'),
  DataItem(
      title: 'BNB',
      subtitle: 'Binance',
      price: '\$564.7',
      changedPrice: 150.3,
      imgUrl: 'assets/image/bnb.png'),
];

class DataItem {
  String title;
  String subtitle;
  String price;
  double changedPrice;
  String imgUrl;

  DataItem({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.changedPrice,
    required this.imgUrl,
  });

  bool isIncrease() {
    return changedPrice > 0;
  }

  bool isDecrease() {
    return changedPrice < 0;
  }

  String get profit {
    if (isIncrease()) {
      return '+${changedPrice.toString()}';
    } else if (isDecrease()) {
      return changedPrice.toString();
    } else {
      return changedPrice.toString();
    }
  }

  Color get profitColor {
    if (isIncrease()) {
      return Colors.green;
    } else if (isDecrease()) {
      return Colors.red;
    } else {
      return Colors.grey[800]!;
    }
  }
}
