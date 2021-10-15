import 'package:aplikasi_cari_kost/model/space.dart';
import 'package:aplikasi_cari_kost/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_cari_kost/model/space.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    space.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(38),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${space.rating}/5',
                              style: whitekStyle.copyWith(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${space.price}',
                  style: purpleStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: '/ mont',
                      style: greyStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
