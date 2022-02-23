// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maditation_app/widgets/activity_card.dart';
import 'package:maditation_app/widgets/blur_effects.dart';
import 'package:maditation_app/widgets/bottom_navigation.dart';
import 'package:maditation_app/widgets/wave_clip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          //! atention when get the clip widets shoud be put first widet pic in the down to up  */
          Positioned(
            top: ScreenUtil().screenHeight * .52,
            left: 0,
            child: ClipPath(
              clipper: WaveClip(),
              child: const ActiveWidget(
                image: 'assets/images/ocean.jpeg',
                title: 'Sensation ',
                subtitle: 'feel the moment',
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().screenHeight * .26,
            left: 0,
            child: ClipPath(
              clipper: WaveClip(),
              child: const ActiveWidget(
                image: 'assets/images/sky.jpeg',
                title: 'DayDream ',
                subtitle: 'go beynod the form',
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: ClipPath(
              clipper: WaveClip(),
              child: const ActiveWidget(
                image: 'assets/images/desert.jpeg',
                title: 'Meditation ',
                subtitle: 'Discover Happiness',
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: BlurEffects(
              borderRadius: 100,
              child: Container(
                  color: Colors.white.withOpacity(.2),
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  width: ScreenUtil().screenWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.queue_music),
                        padding: const EdgeInsets.only(left: 5, top: 40),
                      ),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                        ),
                        padding: const EdgeInsets.only(right: 5, top: 40),
                      )
                    ],
                  )),
            ),
          ),
          Positioned.fill(
            top: 60,
            child: Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/me.jpg',
                  width: 60,
                  height: 65,
                ),
              ),
            ),
          ),
          Positioned(
            width: ScreenUtil().screenWidth,
            bottom: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                ButtomNavigationBarIcon(
                  isSelected: false,
                  text: 'Foucs',
                  icon: Icons.center_focus_strong,
                ),
                ButtomNavigationBarIcon(
                  isSelected: true,
                  text: 'Relax',
                  icon: Icons.music_note,
                ),
                ButtomNavigationBarIcon(
                  isSelected: false,
                  text: 'Sleep',
                  icon: Icons.dark_mode,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
