import 'package:aplikasi_cari_kost/model/city.dart';
import 'package:aplikasi_cari_kost/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        18,
      ),
      child: Container(
        height: 150,
        width: 120,
        color: Color(0xffF6F7f8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(38),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
