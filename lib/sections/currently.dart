import 'package:flutter/material.dart';
import 'package:flutter_website/widgets/typewriter_text.dart';

class SectionCurrently extends StatelessWidget {
  const SectionCurrently();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: FittedBox(
              fit: BoxFit.cover,
              child: TypeWriterText(
                text: [
                  "Currently I am",
                  "Well, actually I always do a lot of things...",
                  "Ok let's say mainly I am: "
                ],
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 32,
                  top: -10,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 80),
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset('assets/images/polimi_logo.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Studiyng\n Computer Engeeering @ PoliMi",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text("&",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2),
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Stack(clipBehavior: Clip.none, children: [
              Positioned(
                top: -10,
                left: 32,
                child: Container(
                  constraints: BoxConstraints(maxHeight: 80),
                  child: Opacity(
                    opacity: 0.4,
                    child: Image.asset('assets/images/tutored_logo.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline2,
                    children: <TextSpan>[
                      TextSpan(
                        text: "Working as Web\n and Mobile Developer @ ",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      TextSpan(
                        text: "Tutored",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(color: Color(0xFFFF4B00)),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}