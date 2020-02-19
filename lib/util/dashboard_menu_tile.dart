import 'package:flutter/material.dart';

import '../ui/proses_pembelian_screen.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> pembelian = [
  const Choice(title: 'Pulsa Reguler', icon: Icons.phone_android),
  const Choice(title: 'Paket Data', icon: Icons.signal_cellular_4_bar),
  const Choice(title: 'Paket SMS', icon: Icons.chat),
  const Choice(title: 'Paket Nelpon', icon: Icons.phone),
  const Choice(title: 'Token PLN', icon: Icons.star),
  const Choice(title: 'Pulsa Transfer', icon: Icons.directions),
  const Choice(title: 'OVO', icon: Icons.card_giftcard),
  const Choice(title: 'GOPAY', icon: Icons.send),
  const Choice(title: 'LINKAJA', icon: Icons.link),
  const Choice(title: 'DANA', icon: Icons.attach_money),
  const Choice(title: 'Shopee Pay', icon: Icons.shopping_cart),
  const Choice(title: 'WIFI ID', icon: Icons.signal_wifi_4_bar),
  const Choice(title: 'Gojek Driver', icon: Icons.person),
  const Choice(title: 'Grab Driver', icon: Icons.motorcycle),
  const Choice(title: 'iTunes', icon: Icons.music_note),
  const Choice(title: 'Google Play', icon: Icons.playlist_play),
];

const List<Choice> pembayaran = [
  const Choice(title: 'PLN', icon: Icons.equalizer),
  const Choice(title: 'Telkom', icon: Icons.phone_locked),
  const Choice(title: 'Halo', icon: Icons.phone),
  const Choice(title: 'BPJS', icon: Icons.hearing),
  const Choice(title: 'PDAM', icon: Icons.branding_watermark),
  const Choice(title: 'Asuransi', icon: Icons.airline_seat_individual_suite),
  const Choice(title: 'ISP', icon: Icons.gavel),
  const Choice(title: 'Kartu Kredit', icon: Icons.credit_card),
  const Choice(title: 'Multi Finance', icon: Icons.attach_money),
  const Choice(title: 'Pulsa Pasca', icon: Icons.timer),
  const Choice(title: 'TV Berbayar', icon: Icons.terrain),
];

const List<Choice> game = [
  const Choice(title: 'ASIASOFT', icon: Icons.games),
  const Choice(title: 'BSF', icon: Icons.games),
  const Choice(title: 'Cabal Online', icon: Icons.games),
  const Choice(title: 'Dasa Game', icon: Icons.games),
  const Choice(title: 'e-Pins', icon: Icons.games),
  const Choice(title: 'Fastblack', icon: Icons.games),
  const Choice(title: 'Faveo', icon: Icons.games),
  const Choice(title: 'FBCARD', icon: Icons.games),
  const Choice(title: 'Game Facebook - Boyaa Poker', icon: Icons.games),
  const Choice(title: 'Game Facebook - Joombi', icon: Icons.games),
  const Choice(title: 'Game Facebook - Pico World', icon: Icons.games),
  const Choice(title: 'Game Facebook - Pool Live Tour', icon: Icons.games),
  const Choice(title: 'Gamewave', icon: Icons.games),
  const Choice(title: 'Gameweb', icon: Icons.games),
  const Choice(title: 'Gemscool', icon: Icons.games),
  const Choice(title: 'GOGAME', icon: Icons.games),
  const Choice(title: 'Golonline', icon: Icons.games),
  const Choice(title: 'IAH Games', icon: Icons.games),
  const Choice(title: 'INGAME', icon: Icons.games),
  const Choice(title: 'Kiwi Card', icon: Icons.games),
  const Choice(title: 'Koram', icon: Icons.games),
  const Choice(title: 'Mainkan.com', icon: Icons.games),
  const Choice(title: 'MatchMove', icon: Icons.games),
  const Choice(title: 'Megaxus', icon: Icons.games),
  const Choice(title: 'Metin 2', icon: Icons.games),
  const Choice(title: 'Mobius', icon: Icons.games),
  const Choice(title: 'MOGCAZ', icon: Icons.games),
  const Choice(title: 'MOGPLAY', icon: Icons.games),
  const Choice(title: 'MOLPoints', icon: Icons.games),
  const Choice(title: 'MyCard', icon: Icons.games),
  const Choice(title: 'OrangeGame', icon: Icons.games),
  const Choice(title: 'PlayCircle', icon: Icons.games),
  const Choice(title: 'PlayFish', icon: Icons.games),
  const Choice(title: 'Playnexia', icon: Icons.games),
  const Choice(title: 'Playon', icon: Icons.games),
  const Choice(title: 'Playpoint', icon: Icons.games),
  const Choice(title: 'PLAYSPAN', icon: Icons.games),
  const Choice(title: 'Playstation Store Prepaid Card', icon: Icons.games),
  const Choice(title: 'Qash', icon: Icons.games),
  const Choice(title: 'Serenity', icon: Icons.games),
  const Choice(title: 'Softnix', icon: Icons.games),
  const Choice(title: 'Spin', icon: Icons.games),
  const Choice(title: 'STEAM', icon: Icons.games),
  const Choice(title: 'TERACORD', icon: Icons.games),
  const Choice(title: 'Travian', icon: Icons.games),
  const Choice(title: 'UNIPIN', icon: Icons.games),
  const Choice(title: 'Viwawa', icon: Icons.games),
  const Choice(title: 'VTC Online', icon: Icons.games),
  const Choice(title: 'Wavegame', icon: Icons.games),
  const Choice(title: 'Winner Card', icon: Icons.games),
  const Choice(title: 'ZYNGA', icon: Icons.games),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        elevation: 8,
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child:
                        Icon(choice.icon, size: 50.0, color: textStyle.color)),
                Text(
                  choice.title,
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Lato', color: Colors.black45),
                ),
              ]),
        ));
  }
}

class GridCard extends StatefulWidget {

  final List<Choice> map;
  var function;

  GridCard({
    @required this.map,
    this.function,
  });

  @override
  _GridCardState createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: GridView.count(
          crossAxisCount: 4,
          children: widget.map.map((index) {
            // print(index);

            return GestureDetector(
                onTap: () => widget.function(),
                child: ChoiceCard(
                  choice: index,
                ));
          }).toList()),
    );
  }
}
