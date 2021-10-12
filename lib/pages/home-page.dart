import 'package:aplikasi_cari_kost/model/city.dart';
import 'package:aplikasi_cari_kost/model/space.dart';
import 'package:aplikasi_cari_kost/widget/city_card.dart';
import 'package:aplikasi_cari_kost/widget/space_card.dart';
import 'package:aplikasi_cari_kost/widget/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_cari_kost/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              //NOTE : Title/Header
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //Popular City
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Text(
                  'Popular City',
                  style: regulerStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/pic.png',
                        isPopular: false,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/pic2.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/pic3.png',
                        isPopular: false,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // RECOMENDDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: regulerStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1,
                        name: 'Kuretakaso Hot',
                        imageUrl: 'assets/images/image1.png',
                        price: 52,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 2,
                        name: 'Roemah Nenek',
                        imageUrl: 'assets/images/image2.png',
                        price: 11,
                        city: 'Bogor',
                        country: 'Indonesia',
                        rating: 5,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 3,
                        name: 'Rumah Tua',
                        imageUrl: 'assets/images/image3.png',
                        price: 20,
                        city: 'Jakarta',
                        country: 'Indonesia',
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              //TIPS and GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regulerStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TipsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
