import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final String webtoonId;
  final WebtoonEpisodeModel episode;

  onButtonTop() async {
    // final url = Uri.parse("https://google.com");
    // await launchUrl(url);
    await launchUrlString(
        "https://m.comic.naver.com/webtoon/detail?titleId={$webtoonId}&no=${episode.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTop,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: const Offset(10, 10),
                color: Colors.black.withOpacity(0.8),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
