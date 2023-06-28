import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarRengiBul();
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 250,
            pinned: false,
            backgroundColor: appBarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                  "images/" + widget.secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ));
    }
  

  void appBarRengiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/" + widget.secilenBurc.burcBuyukResim),
        );
    appBarRengi = _generator.dominantColor!.color;
    setState(() {});
  }
}
