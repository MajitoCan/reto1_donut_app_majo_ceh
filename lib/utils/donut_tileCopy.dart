import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic
      donutColor; //dynamic=porque sera de tipo color y tambien usará []
  final String imageName;

  //Valor fijo para el borde circular
  final double borderRadius = 24;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutPrice,
      this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //Dont price
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, //alinear el precio a la derecha
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borderRadius),
                            bottomLeft: Radius.circular(
                                borderRadius))), //sirve para redondear el precio
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$donutPrice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: donutColor[800]),
                    ) //para sacar el $ de precio

                    ),
              ],
            ),
            //DonutPicture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Image.asset(
                  imageName), //agrega una imagen y le da tamaño con el padding
            ),
            //Donut flavor text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Text(
                donutFlavor,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Text(
                "Dunkin's",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ) //Love icon + add button




          ],
        ),
      ),
    );
  }
}
