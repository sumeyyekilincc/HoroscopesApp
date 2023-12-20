import 'package:burclar_ilkim/modal/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi= Colors.transparent;
  late PaletteGenerator _generator;

@override
  void initState() {
    super.initState();
    appBarRenginiBul();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarRengi,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.secilenBurc.burcAdi + " " + "Burcu ve ozellikleri"),
              background: Image.asset(
                'images/' + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(6),
              child: SingleChildScrollView(
                  child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.titleLarge,
              )),
            ),
          ),
        ],
      ),
    );
  }

void appBarRenginiBul () async{
      _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenBurc.burcBuyukResim}'));
      appBarRengi = _generator.dominantColor!.color;
      setState(() {
              });
}
}