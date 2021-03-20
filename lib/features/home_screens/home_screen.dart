import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music/assets/colors/colors.dart';
import 'package:music/features/home_screens/data/album.dart';
import 'package:music/utils/constants.dart';
import 'package:music/utils/size_config.dart';
import 'components/artist_card.dart';
import 'components/home_banner.dart';
import 'components/home_music_card.dart';
import 'components/profile_avatar.dart';
import 'components/release_card.dart';
import 'components/section_title.dart';
import 'components/top_trending_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size * 5),
        child: AppBar(
          leading: Padding(
            padding:  EdgeInsets.only(left: 12.0),
            child: IconButton(
              icon: SvgPicture.asset('lib/features/home_screens/assets/icons/menu.svg', height: size * 3.2, width: size * 3.2,),
              onPressed: () {},
            ),
          ),
          title: Text('Music', style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: fontSize(size: 23)
            ),
          ),
          actions: [
            ProfileAvatar()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: horizontal(size: 18)),
            margin: EdgeInsets.symmetric(vertical: vertical(size: 18)),
            child: Column(
              children: [
                Container(
                  height: height(size: 140),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: albumList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => HomeMusicCard(),
                  ),
                ),
                HomeBanner(),
                SectionTitle(title: 'New Release', subTitle: 'See All'),
                Container(
                  height: height(size: 140),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: albumList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ReleaseCard(album: albumList.elementAt(index)),
                  ),
                ),
                SectionTitle(title: 'Top Trending NFT', subTitle: 'See All'),
                Container(
                  height: height(size: 96),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: albumList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => TopTrendingCard(),
                  ),
                ),
                SectionTitle(
                  title: 'Top Artists',
                ),
                Container(
                  height: height(size: 103),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ArtistCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


