import 'package:flutter/material.dart';
import 'package:ralf_hotel_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        // NOTE: HEADER
        SizedBox(
          height: 50,
        ),
        Text(
          'Your Locations',
          style: greyTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
        Row(
          children: [
            Text(
              'Bandung, ',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Indonesia',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ],
        ),

        // NOTE: SEARCH
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: kStrokeColor,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Find your Favorite Hotels',
                style: greyTextStyle,
              ),
            ],
          ),
        ),

        SizedBox(
          height: 24,
        ),
        Divider(),
        SizedBox(
          height: 24,
        ),

        // NOTE: LATEST SEARCH
        Text(
          'Lastest Search',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: kStrokeColor,
                ),
              ),
              child: Text(
                'Mason',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: kStrokeColor,
                ),
              ),
              child: Text(
                'Swissbell',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: kStrokeColor,
                ),
              ),
              child: Text(
                'Yello',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: kStrokeColor,
                ),
              ),
              child: Text(
                'GH Setiabudi',
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: kStrokeColor,
                ),
              ),
              child: Text(
                'Damoty Hotel',
              ),
            ),
          ],
        ),

        // NOTE: NEARBY YOU
        SizedBox(
          height: 24,
        ),
        Text(
          'Nearby You',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        HotelTile(
          name: 'GH Setiabuddy',
          location: 'Setiabuddy, Bandung',
          imageUrl: 'assets/image_hotel1.png',
          distance: 0.1,
        ),
        HotelTile(
          name: 'Damsaurus Hotel',
          location: 'Pasteur, Bandung',
          imageUrl: 'assets/image_hotel2.png',
          distance: 1.6,
        ),
        HotelTile(
          name: 'Andjoy Hotel',
          location: 'Kebon Jaty, Bandung',
          imageUrl: 'assets/image_hotel3.png',
          distance: 2.2,
        ),
      ],
    );
  }
}

class HotelTile extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final double distance;

  const HotelTile({
    Key? key,
    this.name = '',
    this.location = '',
    this.imageUrl = '',
    this.distance = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        bottom: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  location,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '$distance\km',
            style: orangeTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
