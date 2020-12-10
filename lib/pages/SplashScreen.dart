import 'package:flutter/material.dart';
import 'package:yoga_app_onboarding/items/item_splash_pageview.dart';
import 'package:yoga_app_onboarding/pages/HomeScreen.dart';
import 'package:yoga_app_onboarding/style.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: PageView(
                      onPageChanged: (pageIndex) {
                        setState(() {
                          currentPageIndex = pageIndex;
                          print('current page index $currentPageIndex');
                        });
                      },
                      children: [
                        ItemSplashPageView(
                          title: 'Workout List',
                          description:
                              'Now is as good a time as any to focus on getting your body into the best shape possible. if you really want make something happen.',
                          img_path: 'assets/images/img1.png',
                        ),
                        ItemSplashPageView(
                          title: 'Contemplation',
                          description:
                              'Concentration on spiritual things as a form of private devotion. A state awarenes of God\'s being & An act of considering with attention.',
                          img_path: 'assets/images/img2.png',
                        ),
                        ItemSplashPageView(
                          title: 'Everyday Training',
                          description:
                              'Training every day is a good thing. It\'s led to several benefits both mentally and physically. Gone are the days of workout gym.',
                          img_path: 'assets/images/img3.png',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: FractionallySizedBox(
                          heightFactor: 0.15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 33,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4),
                                  child: AspectRatio(
                                    aspectRatio:
                                        currentPageIndex != 0 ? 1 / 1 : 3 / 1,
                                    child: Card(
                                      elevation: 0,
                                      clipBehavior: Clip.antiAlias,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: currentPageIndex != 0
                                                  ? [
                                                      AppTheme
                                                          .gradient1_disabled,
                                                      AppTheme
                                                          .gradient2_disabled,
                                                    ]
                                                  : [
                                                      AppTheme.gradient1,
                                                      AppTheme.gradient2,
                                                    ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 33,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4),
                                  child: AspectRatio(
                                    aspectRatio:
                                        currentPageIndex != 1 ? 1 / 1 : 3 / 1,
                                    child: Card(
                                      elevation: 0,
                                      clipBehavior: Clip.antiAlias,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: currentPageIndex != 1
                                                  ? [
                                                      AppTheme
                                                          .gradient1_disabled,
                                                      AppTheme
                                                          .gradient2_disabled,
                                                    ]
                                                  : [
                                                      AppTheme.gradient1,
                                                      AppTheme.gradient2,
                                                    ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 33,
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4),
                                  child: AspectRatio(
                                    aspectRatio:
                                        currentPageIndex != 2 ? 1 / 1 : 3 / 1,
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: currentPageIndex != 2
                                                  ? [
                                                      AppTheme
                                                          .gradient1_disabled,
                                                      AppTheme
                                                          .gradient2_disabled,
                                                    ]
                                                  : [
                                                      AppTheme.gradient1,
                                                      AppTheme.gradient2,
                                                    ]),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 50,
                            child: Container(
                              alignment: Alignment(0.0, 0.5),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, HomeScreen.routeName);
                                },
                                child: Text(
                                  'Skip For Now',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                          color: AppTheme.headlineTextColor
                                              .withOpacity(0.4)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 50,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: FractionallySizedBox(
                                widthFactor: 0.9,
                                heightFactor: 1,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 5,
                                  shadowColor: AppTheme.gradient2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                AppTheme.gradient1,
                                                AppTheme.gradient2,
                                              ]),
                                        ),
                                        child: Text(
                                          'Create an Account',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            splashFactory:
                                                InkRipple.splashFactory,
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  HomeScreen.routeName);
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
