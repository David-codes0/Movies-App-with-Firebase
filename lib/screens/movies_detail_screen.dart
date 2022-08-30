import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/custom_outline.dart';
import 'package:flutter_movie_app/components/masked_image.dart';

import 'package:flutter_movie_app/constants.dart';
import 'package:flutter_movie_app/models/movie.dart';
import 'dart:developer' as devtools;

import 'package:flutter_svg/flutter_svg.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    devtools.log('$screenWidth   , $screenHeight');
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0)
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.48,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/movie-posters/Group-1.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth * 0.122,
                      height: screenWidth * 0.122,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.5),
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          )),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(Constants.kIconBack)),
                    ),
                    SizedBox(
                      width: screenWidth * 0.70,
                    ),
                    Container(
                      width: screenWidth * 0.122,
                      height: screenWidth * 0.122,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.5),
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(Constants.kIconMenu),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.36,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: CustomOutline(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kGreenColor,
                      Constants.kPinkColor,
                    ],
                  ),
                  radius: 32,
                  strokeWidth: 4,
                  padding: const EdgeInsets.all(0),
                  width: 64,
                  height: 64,
                  child: Container(
                    alignment: Alignment.center,
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kGreenColor.withOpacity(0.5),
                          Constants.kPinkColor.withOpacity(0.5),
                        ],
                      ),
                    ),
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        Constants.kIconPlay,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.42,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Eternals',
                    style: TextStyle(
                      fontSize: screenWidth * 0.064,
                      color: Constants.kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '2021 Action-Adventure-Fantasy 2h36m',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Constants.kGreyColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      5,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: SizedBox(
                            child: Icon(
                              Icons.star,
                              color: index <= 2
                                  ? Constants.kYellowColor
                                  : Constants.kWhiteColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'The saga of the Eternals, a race of\nimmortal beings who lived on Earth\nand shaped its history and\ncivilizations.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Constants.kGreyColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Divider(
                  height: screenHeight * 0.003,
                  thickness: 2,
                  color: Constants.kGreyColor,
                  endIndent: 40,
                  indent: 40,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Casts',
                          style: TextStyle(
                            fontSize: screenWidth * 0.064,
                            color: Constants.kWhiteColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ...List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 1.0, left: 8),
                        child: CastsDetails(index: index),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CastsDetails extends StatelessWidget {
  const CastsDetails({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          minRadius: 16,
          maxRadius: 16,
          backgroundImage: AssetImage(newMovies[2].movieCast[index]['image']!),
        ),
        Expanded(
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 50,
              maxWidth: 112,
            ),
            transform: Matrix4.translationValues(0, 8, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(
                  height: 32,
                  width: 100,
                  child: MaskedImage(
                    asset: Constants.kMaskCast,
                    mask: Constants.kMaskCast,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      newMovies[2].movieCast[index]['name']!,
                      style: const TextStyle(
                        color: Constants.kBlackColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
