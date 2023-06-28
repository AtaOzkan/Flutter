import 'package:flutter/material.dart';
import 'package:flutter_fffffff/constants/constants.dart';
import 'package:flutter_fffffff/helper/data_helper.dart';

class HarfDropdown extends StatefulWidget {
  const HarfDropdown({required this.onHarfSecildi, super.key});
  final Function onHarfSecildi;
  
  @override
  State<HarfDropdown> createState() => _HarfDropdownState();
}
double secilenHarf = 4;
class _HarfDropdownState extends State<HarfDropdown> {
 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<double>(
        items: DataHelper.tumDersHarfleri(),
        iconEnabledColor: Constants.kutuIciRenkler,
        elevation: 16,
        value: secilenHarf,
        onChanged: (deger) {
          setState(() {
            secilenHarf = deger!;
            widget.onHarfSecildi(secilenHarf);
          });
        },
      )
    );
  }
}