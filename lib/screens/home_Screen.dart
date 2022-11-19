import 'package:e_book/consttant.dart';
import 'package:flutter/material.dart';
import '../widgets/book_rating.dart';
import '../widgets/reading_list_card.dart';
import '../widgets/two_side_rounded_button.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * .1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const TextSpan(text: "What are you \nreading "),
                              const TextSpan(
                                text: "today?",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          card(
                            title: "Crushing & Influence",
                            auth: "Gary Venchuk",
                            image: "assets/images/book-1.png",
                            rating: 4.9,
                            readpress: () {},
                            detialpress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const DetailsScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          card(
                            title: "Top Ten Business Hacks",
                            auth: "Herman Joel",
                            image: "assets/images/book-2.png",
                            rating: 4.8,
                            readpress: () {},
                            detialpress: () {},
                          ),
                          card(
                            title: "Crushing & Influence",
                            auth: "Gary Venchuk",
                            image: "assets/images/book-1.png",
                            rating: 4.9,
                            readpress: () {},
                            detialpress: () {},
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: const [
                                TextSpan(text: "Best of the "),
                                TextSpan(
                                  text: "day",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          bestOfTheDayCard(size, context),
                          RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: const [
                                TextSpan(text: "Continue "),
                                TextSpan(
                                  text: "reading...",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 33,
                                  color: const Color(0xFFD3D3D3).withOpacity(.84),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(38.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const <Widget>[
                                                Text(
                                                  "Crushing & Influence",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Gary Venchuk",
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    "Chapter 7 of 10",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      color: kLightBlackColor,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                            "assets/images/book-1.png",
                                            width: 55,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 7,
                                    width: size.width * .65,
                                    decoration: BoxDecoration(
                                      color: kProgressIndicator,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

Container bestOfTheDayCard(Size size, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    width: double.infinity,
    height: 245,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
              right: size.width * .35,
            ),
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFEAEAEA).withOpacity(.45),
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: const Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                ),
                Text(
                  "How To Win \nFriends &  Influence",
                  style: Theme.of(context).textTheme.caption,
                ),
                const Text(
                  "Gary Venchuk",
                  style: TextStyle(color: kLightBlackColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10.0),
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: BookRating(score: 4.9),
                      ),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people….",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            "assets/images/book-3.png",
            width: size.width * .37,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 40,
            width: size.width * .3,
            child: twoSideRoundedButton(
              text: "Read",
              radious: 24,
              press: () {},
            ),
          ),
        ),
      ],
    ),
  );
}
