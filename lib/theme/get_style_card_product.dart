import 'package:flutter/material.dart';

import 'colors.dart';


ElevatedButton cardProduct(
    {required String nomeAparelho,
    required String desc,
    required String preco,
    required void Function()? onPressed}) {
  return ElevatedButton(
    style: styleCard,
    onPressed: onPressed,
    child: SizedBox(
      width: 170,
      height: 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image(image: AssetImage('asset/png/celular-31.png'))],
          ),
          Text(
            (nomeAparelho),
            style: const TextStyle(
                fontFamily: 'Kadwa',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: kColorTextPrimary),
          ),
          Text(
            (desc),
            style: TextStyle(
                fontFamily: 'Kadwa', fontSize: 11, color: Colors.grey.shade600),
          ),
          Text(
            (preco),
            style: const TextStyle(
                fontFamily: 'Kadwa',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kColorTextPrimary),
          )
        ],
      ),
    ),
  );
}

ButtonStyle styleCard = ElevatedButton.styleFrom(backgroundColor: Colors.white);
