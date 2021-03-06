import 'package:covid19/components/ads-component.dart';
import 'package:covid19/components/card-component.dart';
import 'package:covid19/components/kgp-base-page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InforFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KgpBasePage(
        title: 'Cover coughs and sneezes',
        expandedHeight: 55,
        children: <Widget>[
          Lottie.asset(
            'assets/28663-coronavirus-covid-19.json',
            repeat: true,
            animate: true,
            height: 300,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CardComponent(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'If you are in a private setting and do not have on your cloth face covering, remember to always cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow.',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Throw used tissues in the trash.',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                      ),
                    ),
                    trailing: Hero(
                      tag: 5,
                      child: Image.asset('assets/five.png'),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Immediately wash your hands with soap and water for at least 20 seconds. If soap and water are not readily available, clean your hands with a hand sanitizer that contains at least 60% alcohol.',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1.color,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AdsComponent(),
          ),
        ],
      ),
    );
  }
}
