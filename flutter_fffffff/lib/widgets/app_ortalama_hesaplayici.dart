import 'package:flutter/material.dart';
import 'package:flutter_fffffff/constants/constants.dart';
import 'package:flutter_fffffff/widgets/harf_dropdown.dart';
import 'package:flutter_fffffff/widgets/kredi_dropdown.dart';

class appHesaplayici extends StatefulWidget {
  const appHesaplayici({super.key});

  @override
  State<appHesaplayici> createState() => _appHesaplayiciState();
}

var formKey = GlobalKey<FormState>();
String girilenDersAdi = "";

class _appHesaplayiciState extends State<appHesaplayici> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Constants.baslikText,
              style: Constants.baslikTextStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: _buildForm(),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: _buildOrtalama(),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            ),
          ],
        ));
  }
}

_buildOrtalama() {}

Widget _buildForm() {
  return Form(
    key: formKey,
    child: Column(
      children: [
        _buildTextFormField(),
        Row(
          children: [
            Expanded(
              child: HarfDropdown(
                onHarfSecildi: (harf) {
                  secilenHarf = harf;
                },
              ),
            ),
            Expanded(
              child: KrediDropdown(),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.architecture_rounded),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildTextFormField() {
  return TextFormField(
    onSaved: (newValue) {
      girilenDersAdi = newValue!;
    },
    validator: (value) {
      if (girilenDersAdi.length < 1) {
        return "Ders giriniz";
      } else
        return null;
    },
    decoration: InputDecoration(
        hintText: "Ders Giriniz",
        border: OutlineInputBorder(
          borderRadius: Constants.borderRadius,
        ),
        filled: true,
        fillColor: Constants.kutuIciRenkler),
  );
}
