import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maditation_app/widgets/blur_effects.dart';
import 'package:maditation_app/widgets/play_bottom.dart';
import 'package:maditation_app/widgets/wave_clip.dart';

class MusicrScreen extends StatelessWidget {
  const MusicrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: WaveClip(),
              child: Container(
                width: double.infinity,
                height: ScreenUtil().screenHeight * .60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/tree.jpeg'),
                      fit: BoxFit.cover),
                ),
                child: BlurEffects(
                  child: Container(
                    color: Colors.black.withOpacity(.1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 50,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white.withOpacity(.3),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Killing Anxiety',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'to attain equilibrium following the abrupt \nremoval of some influence',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(.3),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/yoga.jpeg'),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(
                                0,
                                20,
                              ),
                              color: Colors.greenAccent.withOpacity(.1),
                              spreadRadius: 10)
                        ]),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'by Tony Lane',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Divider(
                    indent: 135,
                    color: Colors.grey.withOpacity(.3),
                    thickness: 1,
                    endIndent: 135,
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const textIocn(
                          text: 'Behaviour of mind',
                          icon: Icon(Icons.play_arrow, size: 36),
                          timeFormat: '2:04',
                          isSelected: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        textIocn(
                            text: 'Behaviour of mind',
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.grey.withOpacity(.2),
                              size: 36,
                            ),
                            timeFormat: '1:44',
                            isSelected: false),
                        const SizedBox(
                          height: 10,
                        ),
                        textIocn(
                          text: 'Behaviour of mind',
                          icon: Icon(
                            Icons.play_arrow,
                            size: 36,
                            color: Colors.grey.withOpacity(.2),
                          ),
                          timeFormat: '1:30',
                          isSelected: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        textIocn(
                          text: 'Behaviour of mind',
                          icon: Icon(Icons.lock_rounded,
                              size: 36, color: Colors.grey.withOpacity(.2)),
                          timeFormat: '3:30',
                          isSelected: false,
                        ),
                        textIocn(
                          text: 'Behaviour of mind',
                          icon: Icon(Icons.lock_rounded,
                              size: 36, color: Colors.grey.withOpacity(.2)),
                          timeFormat: '3:30',
                          isSelected: false,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(),
                width: ScreenUtil().screenWidth,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(ScreenUtil().screenWidth, 80),
                      painter: NavaPainter(),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: ScreenUtil().screenWidth,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                width: .25,
                                color: Colors.lightGreen.shade300,
                                style: BorderStyle.solid), //BorderSide
                          ),
                        ),
                      ),
                    ),
                    Center(
                      heightFactor: .2,
                      child: FloatingActionButton(
                        splashColor: Colors.blueGrey,
                        backgroundColor: Colors.blueGrey.withOpacity(.5),
                        elevation: 0,
                        onPressed: () {},
                        child: const Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class NavaPainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.blueGrey.withOpacity(.5)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 10); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.6, 10),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
