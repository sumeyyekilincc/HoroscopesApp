import 'package:burclar_ilkim/burc_detay.dart';
import 'package:burclar_ilkim/modal/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        BurcDetay(secilenBurc: listelenenBurc),
                  ),
                );
              },
              leading: Image.asset(
                "images/" + listelenenBurc.burcKucukResim,
              ),
              title: Text(
                listelenenBurc.burcAdi,
                style: myTextStyle.headlineMedium,
              ),
              subtitle: Text(
                listelenenBurc.burchTarihi,
                style: myTextStyle.titleSmall,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.pink,
              ),
            ),
          )),
    );
  }
}
