import 'package:flutter/material.dart';
import 'package:yoga_app_onboarding/style.dart';

class SplashScreen extends StatelessWidget {
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
                    flex: 75,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 0.9,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 70,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 32),
                                child: Image.asset('assets/images/img1.png'),
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Text('Workout List'.toUpperCase(),
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                            Expanded(
                              flex: 20,
                              child: Text(
                                'Now is as good a time as any to focus on getting your body into the best shape possible. if you really want make something happen.',
                                style: Theme.of(context).textTheme.subtitle2,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 10,
                              child: Text(
                                'Workout List',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 50,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 50,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: FractionallySizedBox(
                                widthFactor: 0.9,
                                heightFactor: 0.6,
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
                                            onTap: () => null,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
