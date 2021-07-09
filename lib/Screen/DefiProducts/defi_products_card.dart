// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class DefiProductsCard extends StatefulWidget {
//   DefiProductsCard({
//     @required this.defi_market_cap,
//     @required this.eth_market_cap,
//     @required this.defi_to_eth_ratio,
//     @required this.defi_dominance,
//     @required this.top_coin_defi_dominance,
//     @required this.top_coin_name,
//     @required this.trading_volume_24h,
//   });

//   num defi_market_cap;
//   num eth_market_cap;
//   num defi_to_eth_ratio;
//   num trading_volume_24h;
//   num defi_dominance;
//   String top_coin_name;
//   num top_coin_defi_dominance;

//   @override
//   _DefiProductsCardState createState() => _DefiProductsCardState();
// }

// class _DefiProductsCardState extends State<DefiProductsCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           Text(widget.defi_market_cap.toString()),
//           Text(widget.eth_market_cap ?? 'null'),
//           Text(widget.defi_to_eth_ratio ?? 'null'),
//           Text(widget.defi_dominance ?? 'null'),
//           Text(widget.top_coin_name ?? 'null'),
//           Text(widget.top_coin_defi_dominance ?? 'null'),
//         ],
//       ),
//     );
//   }
// }
