import 'package:flutter/material.dart';

import '../constants/app.constants.dart';
import '../helper/data.helper.dart';

class harfDropdown extends StatefulWidget {
  const harfDropdown({required this.onHarfSecildi, super.key});

  final Function onHarfSecildi;

  @override
  State<harfDropdown> createState() => _harfDropdownState();
}

double secilenHarfDegeri = 4;

class _harfDropdownState extends State<harfDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: DropdownButton<double>(
        iconEnabledColor: Sabitler.anaRenk.shade200,
        elevation: 16,
        value: secilenHarfDegeri,
        onChanged: (deger) {
          setState(() {
            secilenHarfDegeri = deger!;
            widget.onHarfSecildi(secilenHarfDegeri);
          });
        },
        underline: Container(),
        items: DataHelper.tumDersHarfleri(),
      ),
    );
  }
}
