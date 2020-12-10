import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoga_app_onboarding/items/item_splash_pageview.dart';
import 'package:yoga_app_onboarding/style.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home';

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
                    child: ItemSplashPageView(
                      title: 'Welcome to Yoga',
                      description:
                          'A wonderful serenity has taken possession of my entire sweet mornings of spring.',
                      img_path: 'assets/images/img4.png',
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                        child: FractionallySizedBox(
                          heightFactor: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 50,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
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
                                          'Sign In',
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
                                            onTap: () => null,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Sign Up',
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
                                            onTap: () => null,
                                          ),
                                        ),
                                      )
                                    ],
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
                              child: Text(
                                'Or via social media',
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
                          Expanded(
                            flex: 50,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: FractionallySizedBox(
                                  widthFactor: 0.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Flexible(
                                        flex: 33,
                                        child: AspectRatio(
                                          aspectRatio: 1/1,
                                          child: Card(
                                            elevation: 0,
                                            color: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: SvgPicture.asset(
                                                  'assets/images/icon_fb.svg'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 33,
                                        child:  AspectRatio(
                                          aspectRatio: 1/1,
                                          child: Card(
                                          elevation: 0,
                                          color: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50),
                                              side: BorderSide(
                                                width: 2,
                                                color: Colors.red,
                                              )
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: SvgPicture.asset(
                                                'assets/images/icon_google.svg'),
                                          ),
                                      ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 33,
                                        child: AspectRatio(
                                          aspectRatio: 1/1,
                                          child: Card(
                                            elevation: 0,
                                            color: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50),
                                                side: BorderSide(
                                                  width: 2,
                                                  color: Colors.blue,
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Icon(EvaIcons.twitter,color: Colors.blue,),
                                            )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
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
