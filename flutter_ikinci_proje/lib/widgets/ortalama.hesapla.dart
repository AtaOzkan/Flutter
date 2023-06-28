import 'package:flutter/material.dart';
import 'package:flutter_ikinci_proje/constants/app.constants.dart';
import 'package:flutter_ikinci_proje/helper/data.helper.dart';
import 'package:flutter_ikinci_proje/model/ders.dart';
import 'package:flutter_ikinci_proje/widgets/ders_listesi.dart';
import 'package:flutter_ikinci_proje/widgets/kredi_dropdown_widget.dart';
import 'package:flutter_ikinci_proje/widgets/ortalama_goster.dart';
import 'package:flutter_ikinci_proje/widgets/harf_dropdown_widget.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();
  double secilenKrediDegeri = 1;
  String girilenDersAdi = "";
  double secilenHarfDegeri = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            Sabitler.baslikText,
            style: Sabitler.baslikStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: _buildForm(),
                ),
              ),
              Expanded(
                flex: 1,
                child: OrtalamaGoster(
                    dersSayisi: DataHelper.tumEklenenDersler.length,
                    ortalama: DataHelper.ortalamaHesapla()),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(8),
              child: dersListesi(
                onDismiss: (index) {
                  DataHelper.tumEklenenDersler.removeAt(index);
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: _buildTextFormField(),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: harfDropdown(
                    onHarfSecildi: (harf) {
                      secilenHarfDegeri = harf;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: krediDropdawn(onKrediSecildi: (kredi) {
                    secilenKrediDegeri = kredi;
                  }),
                ),
              ),
              IconButton(
                onPressed: _dersEkleveOrtalamaHesapla,
                icon: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Sabitler.anaRenk,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextFormField _buildTextFormField() {
    return TextFormField(
      onSaved: (deger) {
        girilenDersAdi = deger!;
      },
      validator: (s) {
        if (s!.length <= 0) {
          return 'Boş bırakma ders adını';
        } else
          return null;
      },
      decoration: InputDecoration(
          hintText: 'Ders Giriniz',
          border: OutlineInputBorder(
            borderRadius: Sabitler.borderRadius,
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)),
    );
  }

  void _dersEkleveOrtalamaHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var eklenecekDers =
          Ders(girilenDersAdi, secilenHarfDegeri, secilenKrediDegeri);
      DataHelper.dersEkle(eklenecekDers);
      setState(() {});
    }
  }
}
