import 'package:flutter/material.dart';
import 'package:ralf_hotel_app/theme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: kBlueColor,
          ),
          Column(
            children: [
              // NOTE: HEADER
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin + 30,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/button_menu.png',
                      width: 26,
                    ),
                    Text(
                      'Discover',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Image.asset(
                      'assets/button_notif.png',
                      width: 26,
                    ),
                  ],
                ),
              ),

              // NOTE: BALANCE
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Balance',
                            style: greyTextStyle,
                          ),
                          Text(
                            'IDR 9.200.301',
                            style: blueTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/button_add.png',
                      width: 24,
                    ),
                  ],
                ),
              ),

              // NOTE: RECOMMENDED HOTELS
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Hotels',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: blueTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HotelCard(
                      name: 'Bimosaurus Hotel',
                      location: 'Safari, Buitenzorg',
                      imageUrl: 'assets/image_hotel1.png',
                      rating: 4.9,
                    ),
                    HotelCard(
                      name: 'Daino Sas Hotel',
                      location: 'Bali, Denpasar',
                      imageUrl: 'assets/image_hotel2.png',
                      rating: 4.8,
                    ),
                  ],
                ),
              ),

              // NOTE: NEW HOTELS EXPERIENCE
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: defaultMargin,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Hotels Experience',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'View all',
                      style: blueTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
              HotelTile(
                name: 'Skytown Hotel',
                location: 'Sibolga, Medan',
                imageUrl: 'assets/image_hotel3.png',
                rating: 4.9,
              ),
              HotelTile(
                name: 'Skytown Hotel',
                location: 'Sibolga, Medan',
                imageUrl: 'assets/image_hotel3.png',
                rating: 4.9,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final double rating;

  const HotelCard({
    Key? key,
    this.name = '',
    this.location = '',
    this.imageUrl = '',
    this.rating = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(left: defaultMargin),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          defaultRadius,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 256,
            height: 200,
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
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          size: 16,
                          color: kOrangeColor,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          location,
                          style: greyTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                rating.toString(),
                style: greyTextStyle,
              ),
              SizedBox(
                width: 2,
              ),
              Icon(
                Icons.star,
                color: kYellowColor,
                size: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HotelTile extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final double rating;

  const HotelTile({
    Key? key,
    this.name = '',
    this.location = '',
    this.imageUrl = '',
    this.rating = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
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
            rating.toString(),
            style: greyTextStyle,
          ),
          SizedBox(
            width: 2,
          ),
          Icon(
            Icons.star,
            color: kYellowColor,
            size: 18,
          ),
        ],
      ),
    );
  }
}
