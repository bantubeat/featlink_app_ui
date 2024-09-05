import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'artist_bantubeat_item.dart';

class BantubeatFeaturedArtists extends StatelessWidget {
  const BantubeatFeaturedArtists({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            LocaleKeys.chat_message_list_screen_bantubeat_artist_title.tr(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              constraints: BoxConstraints(
                minWidth: size.width,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                  ArtistBantubeatItem(
                    image: AppAssets.fakeArtist,
                  ),
                  ArtistBantubeatItem(
                    image: AppAssets.fakeArtist,
                  ),
                  ArtistBantubeatItem(
                    image: AppAssets.fakeArtist,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
