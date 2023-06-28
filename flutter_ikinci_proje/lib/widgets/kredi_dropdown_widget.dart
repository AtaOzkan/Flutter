import 'package:flutter/material.dart';

import '../constants/app.constants.dart';
import '../helper/data.helper.dart';

class krediDropdawn extends StatefulWidget {
  const krediDropdawn({required this.onKrediSecildi, super.key});
  final Function onKrediSecildi;

  @override
  State<krediDropdawn> createState() => _krediDropdawnState();
}

double secilenKrediDegeri = 1;

class _krediDropdawnState extends State<krediDropdawn> {
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
        elevation: 200,
        value: secilenKrediDegeri,
        onChanged: (deger) {
          setState(() {
            secilenKrediDegeri = deger!;
            widget.onKrediSecildi(deger);
          });
        },
        underline: Container(),
        items: DataHelper.tumDerslerinKredileri(),
      ),
    );
  }
}
