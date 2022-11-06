import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static String id = 'onboarding screen';
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Onboarding(
              appBar: true,
              image: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 261,
                    image: AssetImage('assets/images/brd 1.png'),
                  ),
                  Image(
                    height: 191,
                    image: AssetImage('assets/images/brd 2.png'),
                  )
                ],
              ),
              cardColor: Colors.green,
              bigText: 'Your Bread without stress',
              smallText: 'Order bread from the comfort of your home',
            ),
            Onboarding(
              appBar: false,
              image: Image(image: AssetImage('assets/images/brd 2.png')),
              cardColor: Colors.black,
              bigText: 'Amazing Discounts and offers',
              smallText: 'Get discounts from using our app',
            ),
            Onboarding(
              appBar: false,
              image: Image(image: AssetImage('assets/images/brd 2.png')),
              cardColor: Colors.green,
              bigText: 'Speedy doorstep delivery in campus',
              smallText: 'Get discounts from using our app',
            )
          ],
        ),
      ),
    );
  }
}

class Onboarding extends StatelessWidget {
  Onboarding({
    required this.appBar,
    required this.image,
    required this.cardColor,
    required this.bigText,
    required this.smallText,
  });
  final bool appBar;
  Widget image;
  Color cardColor;
  String bigText;
  String smallText;
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: appBar ? () {} : null,
                    child: Text(
                      appBar ? 'skip' : '',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ),
              Expanded(
                  flex: 10,
                  child: Align(alignment: Alignment.center, child: image)),
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(bigText,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                            )),
                      ),
                      Spacer(),
                      Flexible(
                        child: Text(smallText,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 10,
                            width: 50,
                            child: Row(
                              children: [
                                Flexible(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 5)),
                                Flexible(
                                    child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 5)),
                                Expanded(
                                    flex: 2,
                                    child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 5))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
