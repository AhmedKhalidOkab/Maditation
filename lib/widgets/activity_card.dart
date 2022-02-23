import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maditation_app/screens/music_screen.dart';

class ActiveWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const ActiveWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 450),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const MusicrScreen()));
      },
      child: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight * .4,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.4),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w900),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.white.withOpacity(.6),
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
